@if (count($breadcrumbs))



    <div class="kt-subheader__breadcrumbs">



        @foreach ($breadcrumbs as $breadcrumb)

            @if ($breadcrumb->url && !$loop->last)
                <a href="{{ $breadcrumb->url }}" class="kt-subheader__breadcrumbs-link">
                    {{ $breadcrumb->title }} </a>
                <span class="kt-subheader__breadcrumbs-separator"></span>
            @else
                {{ $breadcrumb->title }}
                <span class="kt-subheader__breadcrumbs-separator"></span>

        @endif

    @endforeach

        <!-- <span class="kt-subheader__breadcrumbs-link kt-subheader__breadcrumbs-link--active">Active link</span> -->
    </div>

@endif