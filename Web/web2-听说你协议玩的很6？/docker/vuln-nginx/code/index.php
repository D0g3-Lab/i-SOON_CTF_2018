<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>D0g3信安技能树</title>
  <meta name="description" content="要当上大黑阔，你要掌握的技能还真不少。看看你掌握了哪些信安所需要的技能，看看你发展到了什么程度?">
  <meta name="google-site-verification" content="3-n5j67nVlQ0ICC3DJb28FXuJI7pEei5v2kx7AR8eHU" />
  <meta name="keywords" content="信安技能树,技能">
  <link href="app/styles/layout.css" rel="stylesheet">
  <link href="app/styles/icon.css" rel="stylesheet">
  <link href="app/styles/logo.css" rel="stylesheet">
</head>
<body>
<div class="ltIE9-hide">
  <div class="page open">
    <div class="talent-tree">
      <h2 class="start-helper" data-bind="css:{active:noPointsSpent}">从这开始!</h2>
      <h2 class="start-helper" data-bind="css:{active:noPointsSpent}">从这开始!</h2>
      <!--ko foreach: skills-->
      <!--ko if: hasDependencies-->
      <div
        data-bind="css: { 'can-add-points': canAddPoints, 'has-points': hasPoints, 'has-max-points': hasMaxPoints }, attr: { 'data-skill-id': id }"
        class="skill">
        <div data-bind="css: { active: dependenciesFulfilled }" class="skill-dependency"></div>
      </div>
      <!--/ko-->
      <!--/ko-->
      <!--ko foreach: skills-->
      <div data-bind="css: { 'can-add-points': canAddPoints, 'has-points': hasPoints, 'has-max-points': hasMaxPoints }, attr: { 'data-skill-id': id }" class="skill">
        <div class="icon-container">
          <div class="icon"></div>
        </div>
        <div class="frame">
          <div class="tool-tip">
            <h3 data-bind="text: title" class="skill-name"></h3>
            <div data-bind="html: description" class="skill-description"></div>
            <ul class="skill-links">
              相关博客或内容:
              <!--ko foreach: links-->
              <li> <a data-bind="attr: { href: url }, text: label" target="_blank"></a> </li>
              <!--/ko-->
              相关书籍:
              <!--ko foreach: books-->
              <li> <a data-bind="attr: { href: url }, text: label" target="_blank"></a> </li>
              <!--/ko-->
            </ul>
            <hr data-bind="visible: currentRankDescription() || nextRankDescription()">
            <div data-bind="if: currentRankDescription" class="current-rank-description">当前: <span
              data-bind=" text: currentRankDescription"></span></div>
            <div data-bind="if: nextRankDescription" class="next-rank-description">下一个: <span
              data-bind=" text: nextRankDescription"></span></div>
            <hr>
            <ul class="stats">
              <!--ko foreach: stats-->
              <li><span class="value">+<span data-bind="text: value"></span></span> <span data-bind=" text: title" class="title"></span></li>
              <!--/ko-->
            </ul>
            <!--ko if: talentSummary-->
            <div class="talent-summary">技能 <span data-bind="text: talentSummary"></span></div>
            <!--/ko-->
            <div data-bind="text: helpMessage" class="help-message"></div>
          </div>
          <div class="skill-points"><span data-bind="text: points" class="points"></span>/<span data-bind=" text: maxPoints" class="max-points"></span></div>
          <div data-bind="click: addPoint, rightClick: removePoint" class="hit-area"></div>
        </div>
      </div>
      <!--/ko-->
    </div>
    <div class="avatar">
      <h2 class="start-helper-avatar" data-bind="css:{active:noAvatarName}">输入姓名</h2>
      <div class="portrait">
        <img data-bind="attr: { src: portraitURL }"></div>
      <div class="portrait-controls">
        <button data-bind="click: choosePreviousPortrait">&laquo;</button>
        <button data-bind="click: chooseNextPortrait">&raquo;</button>
      </div>
      <div class="details post-content">
      <form action="#" method="get">
          <input type="text" data-bind="value: avatarName" class="h2" name="url">
              
       <?php
        $url = $_GET['url'];
        if (preg_match("/^http:\/\//", $url) || preg_match("/^https:\/\//", $url) || preg_match("/^files:\/\//", $url))
        {
          $ch = curl_init();
          curl_setopt($ch, CURLOPT_URL, $url);
          curl_setopt($ch, CURLOPT_HEADER, 1);//返回response头部信息   
          //curl_setopt($ch, CURLOPT_NOBODY, 1);//不返回response body内容   
          //curl_setopt($ch, CURLOPT_MAXREDIRS, 1);//设置请求最多重定向的次数   
          //curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);//不直接输出response   
          curl_setopt($ch, CURLOPT_FOLLOWLOCATION,1);//如果返回的response 头部中存在Location值，就会递归请求   
          #curl_setopt($ch, CURLOPT_PROTOCOLS, CURLPROTO_HTTP | CURLPROTO_HTTPS);
          curl_exec($ch);
          curl_close($ch);
        }
        else
        { 
          echo "The Intranets are in range 10.10.1.0/16</br>Please use right protocols :)";
        }
      ?>

        <div class="level">Level <span data-bind="  text: level" class="value"></span> 黑阔</div>
        <div data-bind="text: talentSummary" class="talent-summary"></div>
        <ul class="stats">
          <!--ko foreach: stats-->
          <li><span data-bind="text: title" class="title"></span>:
            <span data-bind=" text: value" class="value"></span>
          </li>
          <!--/ko-->
        </ul>
      </div>
    </div>
    <div class="helper">
      <button type="Summit" value="Summit">Summit</button>
      <button data-bind="click: clear">Clear & Build</button>
      <br/>
      <br/>
<!--       <h2 class="share-helper" data-bind="css:{active:canShare}">分享</h2> -->
    </form>
    </div>
  </div>
</div>
<script type="text/javascript" data-main="app/scripts/main.js" src="app/lib/require.js"></script>

</body>
</html>

