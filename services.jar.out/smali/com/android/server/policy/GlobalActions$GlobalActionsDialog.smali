.class public final Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.super Landroid/app/Dialog;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlobalActionsDialog"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GlobalActionsDialog"


# instance fields
.field private final mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

.field private final mAlert:Lcom/android/internal/app/AlertController;

.field private mCancelOnUp:Z

.field private final mContext:Landroid/content/Context;

.field private mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

.field private mIntercepted:Z

.field private mPowerOff:Landroid/widget/ImageButton;

.field private mPowerReboot:Landroid/widget/ImageButton;

.field private mView:Landroid/view/View;

.field private mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private final mWindowTouchSlop:I


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p3, "WindowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const v8, 0x102108f

    const/4 v7, 0x2

    .line 1347
    invoke-static {p1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getDialogTheme(Landroid/content/Context;)I

    move-result v4

    invoke-direct {p0, p1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1348
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 1349
    iput-object p3, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 1350
    new-instance v4, Lcom/android/internal/app/AlertController;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-direct {v4, v5, p0, v6}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    .line 1351
    iget-object v4, p2, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v4, Lcom/android/server/policy/GlobalActions$MyAdapter;

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    .line 1352
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    .line 1353
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {p2, v4}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 1354
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1355
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x1090079

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mView:Landroid/view/View;

    .line 1357
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v3, v4, Landroid/content/res/Configuration;->orientation:I

    .line 1358
    .local v3, "orientation":I
    if-ne v3, v7, :cond_1

    .line 1359
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/CustomImageButtonLandscape;

    .line 1360
    .local v0, "button1":Lcom/android/server/policy/CustomImageButtonLandscape;
    invoke-virtual {v0, p0}, Lcom/android/server/policy/CustomImageButtonLandscape;->setGlobalActionsDialog(Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)V

    .line 1365
    .end local v0    # "button1":Lcom/android/server/policy/CustomImageButtonLandscape;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setBlurMode(I)V

    .line 1366
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mView:Landroid/view/View;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setBlurRadiusDp(F)V

    .line 1367
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    .line 1368
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->init()V

    .line 1346
    return-void

    .line 1361
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1362
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/CustomImageButtonPortrait;

    .line 1363
    .local v1, "button2":Lcom/android/server/policy/CustomImageButtonPortrait;
    invoke-virtual {v1, p0}, Lcom/android/server/policy/CustomImageButtonPortrait;->setGlobalActionsDialog(Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)V

    goto :goto_0
.end method

.method private static getDialogTheme(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1409
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1410
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    .line 1411
    const/4 v3, 0x1

    .line 1410
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1412
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1499
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 1500
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1502
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/policy/GlobalActions$Action;->getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1503
    .local v1, "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 1504
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1500
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1508
    .end local v0    # "i":I
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1448
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    if-eqz v2, :cond_4

    .line 1449
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 1450
    .local v8, "action":I
    if-nez v8, :cond_1

    .line 1451
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 1452
    .local v9, "decor":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v10, v2

    .line 1453
    .local v10, "eventX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v11, v2

    .line 1454
    .local v11, "eventY":I
    iget v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v10, v2, :cond_0

    .line 1455
    iget v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    neg-int v2, v2

    if-ge v11, v2, :cond_5

    .line 1458
    :cond_0
    :goto_0
    iput-boolean v13, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1462
    .end local v9    # "decor":Landroid/view/View;
    .end local v10    # "eventX":I
    .end local v11    # "eventY":I
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    if-nez v2, :cond_6

    .line 1463
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/EnableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    .line 1464
    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    if-eqz v2, :cond_2

    .line 1465
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1467
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    .line 1466
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1468
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1469
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1475
    .end local v0    # "now":J
    :cond_2
    if-ne v8, v13, :cond_4

    .line 1476
    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v2, :cond_3

    .line 1477
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->cancel()V

    .line 1479
    :cond_3
    iput-boolean v12, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1480
    iput-boolean v12, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    .line 1484
    .end local v8    # "action":I
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 1456
    .restart local v8    # "action":I
    .restart local v9    # "decor":Landroid/view/View;
    .restart local v10    # "eventX":I
    .restart local v11    # "eventY":I
    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-ge v10, v2, :cond_0

    .line 1457
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-lt v11, v2, :cond_1

    goto :goto_0

    .line 1472
    .end local v9    # "decor":Landroid/view/View;
    .end local v10    # "eventX":I
    .end local v11    # "eventY":I
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/EnableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 1475
    if-ne v8, v13, :cond_8

    .line 1476
    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v3, :cond_7

    .line 1477
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->cancel()V

    .line 1479
    :cond_7
    iput-boolean v12, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1480
    iput-boolean v12, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    .line 1472
    :cond_8
    return v2

    .line 1474
    :catchall_0
    move-exception v2

    .line 1475
    if-ne v8, v13, :cond_a

    .line 1476
    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v3, :cond_9

    .line 1477
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->cancel()V

    .line 1479
    :cond_9
    iput-boolean v12, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1480
    iput-boolean v12, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    .line 1474
    :cond_a
    throw v2
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mView:Landroid/view/View;

    const v1, 0x102108f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mPowerOff:Landroid/widget/ImageButton;

    .line 1373
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mView:Landroid/view/View;

    const v1, 0x1021091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mPowerReboot:Landroid/widget/ImageButton;

    .line 1375
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mPowerOff:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$1;-><init>(Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1386
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mPowerReboot:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$2;-><init>(Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1400
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mView:Landroid/view/View;

    new-instance v1, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$3;-><init>(Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1371
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1493
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 1492
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1514
    const/4 v0, 0x1

    return v0

    .line 1516
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1522
    const/4 v0, 0x1

    return v0

    .line 1524
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/EnableAccessibilityController;->canEnableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1422
    new-instance v0, Lcom/android/server/policy/EnableAccessibilityController;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 1423
    new-instance v2, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$4;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$4;-><init>(Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)V

    .line 1422
    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    .line 1429
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1435
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 1416
    return-void

    .line 1431
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    .line 1432
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/policy/EnableAccessibilityController;->onDestroy()V

    .line 1443
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 1439
    return-void
.end method
