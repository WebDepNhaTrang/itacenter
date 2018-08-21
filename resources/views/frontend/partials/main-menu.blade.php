<ul class="nav navbar-nav navbar-right" style="padding: 15px;">
    @foreach($items as $menu_item)
        <li class="{{ Route::currentRouteName() == $menu_item->route ? 'current_page_item' : '' }}">
            <a href="{{ $menu_item->link() }}">{{ $menu_item->title }}</a>
        </li>
    @endforeach
</ul>