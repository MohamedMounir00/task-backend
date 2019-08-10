class Service {
    static lang = "";
    static ajaxReqWithLang(url, data, post, callback = () =>{}) {
        data["lang"] = this.lang;
        $.ajax(
            {
                type: post,
                url: url,
                data: data,
                dataType: 'json',
                success: function (data) {
                    callback(true, data)
                },
                error: function (xhr) {
                    callback(false, xhr.responseJSON.errors)

                },
            });
    }
    static ajaxReq(url, data, post, callback = () =>{}) {

        $.ajax(
            {
                type: post,
                url: url,
                data: data,
                dataType: 'json',
                success: function (data) {
                    callback(true, data)
                },
                error: function (xhr) {
                    callback(false, xhr.responseJSON.errors)

                },
            });
    }
}


class HelperFuncs {
    static getCitiesURl = "";
    static getAllCitiesBuCountryId(country, callback=()=>{}) {
        Service.ajaxReqWithLang(this.getCitiesURl,{'country_id': country},"POST", function (status, result) {
            if(typeof callback === 'function') {
                callback(result);
            }
        })
    }
}