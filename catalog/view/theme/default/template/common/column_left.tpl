
<div id="column-left">
    <ul >
    <?php foreach ($categories as $category) { ?>
    <li><a data-flexmenu="flexmenuu<?php echo $i; ?>" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul id="flexmenu<?php echo $i; ?>" class="flexdropdownmenu">
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      
      <?php } ?>
    </li>
    <?php } ?>
  </ul>
  <?php foreach ($modules as $module) { ?>
  <?php echo $module; ?>
  <?php } ?>
</div>

