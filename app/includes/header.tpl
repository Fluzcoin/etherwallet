<!DOCTYPE html>
<html lang="en" ng-app="mewApp">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Fluzcoin Wallet</title>
<meta property="og:title" content="Fluzcoin wallet">
<meta property="og:site_name" content="Fluzcoin wallet">
<meta name="twitter:title" content="Fluzcoin wallet">
<meta name="apple-mobile-web-app-title" content="Fluzcoin wallet">
<link href="https://wallet.fluzcoin.io" rel="canonical">
<meta content="https://wallet.fluzcoin.io" property="og:url">
<meta content="https://wallet.fluzcoin.io" name="twitter:url">
<link rel="stylesheet" href="css/etherwallet-master.min.css">
<script type="text/javascript" src="js/etherwallet-static.min.js"></script>
<script type="text/javascript" src="js/etherwallet-master.js"></script>
<meta name="description" content="Fluzcoin wallet to try out the Quorum implementation">
<meta property="og:description"  content="Fluzcoin wallet to try out the Quorum implementation">
<meta name="twitter:description" content="Fluzcoin wallet to try out the Quorum implementation">
<meta name="robots" content="index,follow">
<meta name="googlebot" content="index,follow">
<link href="images/fav/apple-touch-icon.png?v=1" rel="apple-touch-icon" sizes="180x180">
<link href="images/fav/favicon-32x32.png?v=1" rel="icon" type="image/png" sizes="32x32">
<link href="images/fav/favicon-16x16.png?v=1" rel="icon" type="image/png" sizes="16x16">
<link href="images/fav/favicon.ico?v=1" rel="shortcut icon">
<meta name="apple-mobile-web-app-title" content="Fluzcoin wallet">
<meta name="application-name" content="Fluzcoin wallet">
<meta property="og:url" content="https://wallet.fluzcoin.io" />
<meta property="og:title" content="Fluzcoin wallet" />
<meta property="og:type" content="website">
</head>
<body>

<header class="{{curNode.name}} {{curNode.service}} {{curNode.service}} nav-index-{{gService.currentTab}}" aria-label="header" ng-controller='tabsCtrl' >

<section class="bg-gradient header-branding">
  <section class="container">
    @@if (site === 'mew' ) {
      <a class="brand" href="/" aria-label="Go to homepage">
        <img src="images/logo-fluzcoin.png"   height="64px" width="245px" alt="Fluzcoin" />
      </a>
    }
    <div class="tagline">
    </div>
  </section>
</section>

<nav role="navigation" aria-label="main navigation" class="container nav-container overflowing">
  <a aria-hidden="true" ng-show="showLeftArrow" class="nav-arrow-left" ng-click="scrollLeft(100);" ng-mouseover="scrollHoverIn(true,2);" ng-mouseleave="scrollHoverOut()">&#171;</a>
  <div class="nav-scroll">
    <ul class="nav-inner">
      @@if (site === 'mew' ) {
      <li ng-repeat="tab in tabNames track by $index" \
          class="nav-item {{tab.name}}" \
          ng-class="{active: $index==gService.currentTab}"
          ng-show="tab.mew"
          ng-click="tabClick($index)">
            <a tabindex="0" aria-label="nav item: {{tab.name | translate}}" translate="{{tab.name}}"></a>
      </li>
      }
    </ul>
  </div>
</nav>

@@if (site === 'mew' ) { @@include( './header-node-modal.tpl', { "site": "mew" } ) }
@@if (site === 'cx'  ) { @@include( './header-node-modal.tpl', { "site": "cx"  } ) }

</header>
