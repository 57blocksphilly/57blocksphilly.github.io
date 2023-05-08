---
title: About the Blocks
type: section
images:
  - '/images/default-open-graph-cover-16-9.jpg'
---

<div class='iframe-embed'>
  <div id='iframe-container'>
  </div>
</div>

<script>

window.addEventListener('load', () => {
  const initFrame = window.fiftysevenblocks.insertFrame(
    'https://www.google.com/maps/d/embed?mid=19H38-OkkQi2PexyM_y1nagE-mYCMuhc&ehbc=2E312F')
  initFrame()
  window.addEventListener('resize',
    window.fiftysevenblocks.resizeFrame('#iframe-container iframe'))
})

</script>

By looking at where gun violence is concentrated in the city, we can also look
at other overlapping geographical factors. Download the files below to explore
the blocks by electoral district.

<section class='js-anchor-target-blank'>

* Shapefiles
  * 57 Blocks, points [csv][57_blocks_points.csv]
  * 57 Blocks, points [shapefiles][57_blocks_points.zip]
  * 57 Blocks, quarter mile buffers [shapefiles][57_blocks_quarter_mile_buffers.zip]
* Maps
  * City Council Districts with 57 Blocks [pdf][council_districts_with_57_blocks_table.pdf]
  * Senate Districts with 57 Blocks [pdf][senate_districts_with_57_blocks_table.pdf]
  * House Districts with 57 Blocks [pdf][house_districts_with_57_blocks_table.pdf]
  * Congressional Districts with 57 Blocks [pdf][congressional_districts_with_57_blocks_table.pdf]

We encourage you to review the information below and share the following
handouts with your network and within your community.

* Fact Sheets
  * [57 Blocks Fact Sheet][57-blocks-fact-sheet]
  * [57 Blocks Coalition - Block Overview Handout][57-blocks-coalition-block-overview-handout]

</section>

[57_blocks_points.csv]: /data/57_blocks_points.csv
[57_blocks_points.zip]: /data/57_blocks_points.zip
[57_blocks_quarter_mile_buffers.zip]: /data/57_blocks_quarter_mile_buffers.zip
[57-blocks-fact-sheet]: /data/57_blocks_fact_sheet.pdf
[57-blocks-coalition-block-overview-handout]: /data/57_blocks_coalition_block_overview_handout.pdf
[council_districts_with_57_blocks_table.pdf]: /data/council_districts_with_57_blocks_table.pdf
[senate_districts_with_57_blocks_table.pdf]: /data/senate_districts_with_57_blocks_table.pdf
[house_districts_with_57_blocks_table.pdf]: /data/house_districts_with_57_blocks_table.pdf
[congressional_districts_with_57_blocks_table.pdf]: /data/congressional_districts_with_57_blocks_table.pdf
