.class public Lcom/android/server/policy/global/GlobalActionHostView;
.super Landroid/widget/FrameLayout;
.source "GlobalActionHostView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field protected mMediatorCallback:Lcom/android/server/policy/global/IMediatorCallback;

.field private mRebootView:Landroid/widget/ImageButton;

.field private mShutdownView:Landroid/widget/ImageButton;

.field private mTxtPoweroff:Landroid/widget/TextView;

.field private mTxtReboot:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const-string/jumbo v0, "zs_globalation"

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->TAG:Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionHostView;->initView(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method private dp2px(Landroid/content/Context;F)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dpValue"    # F

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 83
    .local v0, "scale":F
    mul-float v1, p2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private initView(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x51

    const/16 v6, 0x31

    const/4 v5, -0x1

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v3, -0x2

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, v3, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 38
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v1, 0x43440000    # 196.0f

    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/global/GlobalActionHostView;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 39
    new-instance v1, Lcom/android/server/policy/CustomImageButtonPortrait;

    invoke-direct {v1, p1}, Lcom/android/server/policy/CustomImageButtonPortrait;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mShutdownView:Landroid/widget/ImageButton;

    .line 40
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mShutdownView:Landroid/widget/ImageButton;

    const v2, 0x1080384

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 41
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mShutdownView:Landroid/widget/ImageButton;

    const v2, 0x1080386

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 42
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mShutdownView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/global/GlobalActionHostView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mShutdownView:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/server/policy/global/GlobalActionHostView$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/global/GlobalActionHostView$1;-><init>(Lcom/android/server/policy/global/GlobalActionHostView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mTxtPoweroff:Landroid/widget/TextView;

    .line 51
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mTxtPoweroff:Landroid/widget/TextView;

    const v2, 0x104013c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 52
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mTxtPoweroff:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mTxtPoweroff:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 54
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, v3, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 55
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v1, 0x438e0000    # 284.0f

    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/global/GlobalActionHostView;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 56
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mTxtPoweroff:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/global/GlobalActionHostView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, v3, v3, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 59
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v1, 0x434e0000    # 206.0f

    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/global/GlobalActionHostView;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 60
    new-instance v1, Lcom/android/server/policy/CustomImageButtonPortrait;

    invoke-direct {v1, p1}, Lcom/android/server/policy/CustomImageButtonPortrait;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Landroid/widget/ImageButton;

    .line 61
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Landroid/widget/ImageButton;

    const v2, 0x1080388

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 62
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Landroid/widget/ImageButton;

    const v2, 0x108038a

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 63
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/global/GlobalActionHostView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/server/policy/global/GlobalActionHostView$2;

    invoke-direct {v2, p0}, Lcom/android/server/policy/global/GlobalActionHostView$2;-><init>(Lcom/android/server/policy/global/GlobalActionHostView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mTxtReboot:Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mTxtReboot:Landroid/widget/TextView;

    const v2, 0x104013d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 73
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mTxtReboot:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mTxtReboot:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 75
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, v3, v3, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 76
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v1, 0x43300000    # 176.0f

    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/global/GlobalActionHostView;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 77
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mTxtReboot:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/global/GlobalActionHostView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x50

    const/4 v4, 0x2

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "value":Landroid/animation/ObjectAnimator;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Landroid/widget/ImageButton;

    const-string/jumbo v2, "blurAlpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 94
    .local v0, "value":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 95
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 96
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mShutdownView:Landroid/widget/ImageButton;

    const-string/jumbo v2, "blurAlpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 98
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 99
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mTxtPoweroff:Landroid/widget/TextView;

    const-string/jumbo v2, "blurAlpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_2

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 101
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 102
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mTxtReboot:Landroid/widget/TextView;

    const-string/jumbo v2, "blurAlpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_3

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 104
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 90
    .end local v0    # "value":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void

    .line 93
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 96
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 99
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 102
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setMediatorCallback(Lcom/android/server/policy/global/IMediatorCallback;)V
    .locals 0
    .param p1, "mediatorCallback"    # Lcom/android/server/policy/global/IMediatorCallback;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mMediatorCallback:Lcom/android/server/policy/global/IMediatorCallback;

    .line 86
    return-void
.end method
