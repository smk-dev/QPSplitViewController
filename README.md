QPSplitViewController
=====================

Split View Controller (like Settings app) for iOS

![alt tag](https://raw.githubusercontent.com/quangpc/QPSplitViewController/master/Screenshots/demo.png)

=====================
<h1>HOW TO USE:</h1><br>
<h2>1. Add to your projects</h2>
  Manual: add QPSplitViewController
  Cocoapods: pod 'QPSplitViewController'
<br>
<h2>2. Init</h2>

```
    QPSplitViewController *splitVC = [[QPSplitViewController alloc] initWithLeftViewController:left rightViewController:right];
    self.window.rootViewController = splitVC;
```

<h2>3. Change controller</h2>

```
    // Use UIViewController Category
    [self.qp_splitViewController setRightController:newRight];
```

<h2>4. Change size</h2>

```
    // Change left or right split width
    self.qp_splitViewController.leftSplitWidth = 320.0;
```

<h1>ALTERNATIVE (STORYBOARD):</h1><br>

<h2>1. Main Controller</h2>

```
    Create UIViewController in Storyboard and set class to QPSplitViewController
```

<h2>2. Left side</h2>

```
    Create another UIViewController in Storyboard. Then create segue from main controller to current one. Choose type of segue "Custom", segue class "QPSplitViewControllerSegue" and identifier "qp_left".
```

<h2>3. Right side</h2>

```
    Repeat step 2 but change identifier to "qp_right"
```
