.class public Lcom/android/server/policy/global/GlobalActionViewManager;
.super Ljava/lang/Object;
.source "GlobalActionViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/global/GlobalActionViewManager$1;,
        Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

.field mHiddenListener:Landroid/animation/Animator$AnimatorListener;

.field private mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

.field private final mMediatorCallback:Lcom/android/server/policy/global/IMediatorCallback;

.field private final mViewManager:Landroid/view/ViewManager;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/global/GlobalActionViewManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionHostView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/global/GlobalActionViewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewManager;->hideLocked()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/global/IMediatorCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediatorCallback"    # Lcom/android/server/policy/global/IMediatorCallback;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string/jumbo v1, "zs_globalation"

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->TAG:Ljava/lang/String;

    .line 171
    new-instance v1, Lcom/android/server/policy/global/GlobalActionViewManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/global/GlobalActionViewManager$1;-><init>(Lcom/android/server/policy/global/GlobalActionViewManager;)V

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHiddenListener:Landroid/animation/Animator$AnimatorListener;

    .line 37
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 38
    .local v0, "wm":Landroid/view/WindowManager;
    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mViewManager:Landroid/view/ViewManager;

    .line 39
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mMediatorCallback:Lcom/android/server/policy/global/IMediatorCallback;

    .line 36
    return-void
.end method

.method private generateContent()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    if-nez v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewManager;->generateHost()V

    .line 82
    :cond_0
    return-void
.end method

.method private generateDecor()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;-><init>(Lcom/android/server/policy/global/GlobalActionViewManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    .line 78
    return-void
.end method

.method private generateHost()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 90
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Lcom/android/server/policy/global/GlobalActionHostView;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/policy/global/GlobalActionHostView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    .line 92
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mMediatorCallback:Lcom/android/server/policy/global/IMediatorCallback;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/global/GlobalActionHostView;->setMediatorCallback(Lcom/android/server/policy/global/IMediatorCallback;)V

    .line 88
    return-void
.end method

.method private hideLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 157
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setVisibility(I)V

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionHostView;->removeAllViews()V

    .line 162
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->removeView(Landroid/view/View;)V

    .line 165
    :cond_3
    iput-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    .line 167
    :cond_4
    iput-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    .line 168
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mMediatorCallback:Lcom/android/server/policy/global/IMediatorCallback;

    invoke-interface {v0}, Lcom/android/server/policy/global/IMediatorCallback;->windowHide()V

    .line 150
    return-void
.end method

.method private installDecor(Z)V
    .locals 8
    .param p1, "force"    # Z

    .prologue
    const/4 v1, -0x1

    .line 49
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    if-nez v2, :cond_2

    .line 50
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewManager;->generateDecor()V

    .line 55
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_0

    .line 56
    const/high16 v4, 0xc020000

    .line 60
    .local v4, "flags":I
    const/4 v6, -0x1

    .line 61
    .local v6, "stretch":I
    const/16 v7, 0x7d9

    .line 62
    .local v7, "type":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 63
    const/16 v3, 0x7d9

    const/4 v5, -0x3

    move v2, v1

    .line 62
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 64
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v1, "GlobalAction"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 66
    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 67
    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 69
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "flags":I
    .end local v6    # "stretch":I
    .end local v7    # "type":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    if-nez v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-virtual {v1}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->removeAllViews()V

    .line 73
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewManager;->generateContent()V

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    return-void

    .line 52
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-virtual {v2}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->removeAllViews()V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 4

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    if-nez v1, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-virtual {v1}, Lcom/android/server/policy/global/GlobalActionHostView;->hide()V

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "value":Landroid/animation/ObjectAnimator;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 143
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    const-string/jumbo v2, "blurAlpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 144
    .local v0, "value":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 145
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHiddenListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 146
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 136
    .end local v0    # "value":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void

    .line 143
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public declared-synchronized isShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-virtual {v1}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->getVisibility()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->installDecor(Z)V

    .line 45
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mMediatorCallback:Lcom/android/server/policy/global/IMediatorCallback;

    invoke-interface {v0}, Lcom/android/server/policy/global/IMediatorCallback;->windowShowed()V

    .line 43
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method
