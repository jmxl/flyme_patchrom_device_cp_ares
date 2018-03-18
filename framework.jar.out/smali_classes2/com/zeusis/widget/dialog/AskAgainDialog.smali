.class public Lcom/zeusis/widget/dialog/AskAgainDialog;
.super Lcom/zeusis/widget/dialog/BaseDialog;
.source "AskAgainDialog.java"


# instance fields
.field private mAsk:Landroid/widget/TextView;

.field private mCheckbox:Lcom/zeusis/widget/checkbox/ZeusisCheckbox;

.field private mIcon:Landroid/widget/ImageView;

.field private mIconId:I

.field private mIconLayout:Landroid/view/ViewGroup;

.field private mMessage:Landroid/widget/TextView;

.field private mMessageText:Ljava/lang/CharSequence;

.field private mStyle:I


# direct methods
.method static synthetic -get0(Lcom/zeusis/widget/dialog/AskAgainDialog;)Lcom/zeusis/widget/checkbox/ZeusisCheckbox;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mCheckbox:Lcom/zeusis/widget/checkbox/ZeusisCheckbox;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v1, 0x10304d7

    .line 32
    invoke-direct {p0, p1, v1}, Lcom/zeusis/widget/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/zeusis/widget/dialog/AskAgainDialog;->initContent(IZ)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "style"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/zeusis/widget/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 38
    iput p2, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mStyle:I

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/zeusis/widget/dialog/AskAgainDialog;->initContent(IZ)V

    .line 36
    return-void
.end method

.method private initContent(IZ)V
    .locals 10
    .param p1, "style"    # I
    .param p2, "hasTitle"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 44
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 45
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 46
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 47
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 48
    .local v3, "screenWidth":I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 49
    .local v2, "screenHeight":I
    if-nez p2, :cond_4

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x1090128

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "content":Landroid/view/View;
    :goto_0
    const v6, 0x1021169

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mIcon:Landroid/widget/ImageView;

    .line 52
    const v6, 0x1021168

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mIconLayout:Landroid/view/ViewGroup;

    .line 53
    if-eqz p2, :cond_0

    .line 54
    iget v6, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mIconId:I

    if-lez v6, :cond_0

    .line 55
    iget v6, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mIconId:I

    invoke-virtual {p0, v6}, Lcom/zeusis/widget/dialog/AskAgainDialog;->setMessageIcon(I)Lcom/zeusis/widget/dialog/AskAgainDialog;

    .line 58
    :cond_0
    const v6, 0x102116a

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mMessage:Landroid/widget/TextView;

    .line 59
    iget-object v6, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mMessage:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 60
    iget-object v6, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mMessage:Landroid/widget/TextView;

    new-instance v7, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v7}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 61
    iget-object v6, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mMessage:Landroid/widget/TextView;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 62
    if-le v2, v3, :cond_5

    .line 63
    iget-object v6, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mMessage:Landroid/widget/TextView;

    shr-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 66
    :goto_1
    if-eqz p2, :cond_1

    .line 67
    iget-object v6, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mMessageText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    .line 68
    iget-object v6, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mMessage:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iput-object v8, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mMessageText:Ljava/lang/CharSequence;

    .line 73
    :cond_1
    const v6, 0x102116c

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;

    iput-object v6, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mCheckbox:Lcom/zeusis/widget/checkbox/ZeusisCheckbox;

    .line 74
    const v6, 0x102116d

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mAsk:Landroid/widget/TextView;

    .line 75
    iget-object v6, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mAsk:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 76
    iget-object v6, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mAsk:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 78
    :cond_2
    const v6, 0x102116b

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 79
    .local v4, "touch_view":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 80
    new-instance v6, Lcom/zeusis/widget/dialog/AskAgainDialog$1;

    invoke-direct {v6, p0}, Lcom/zeusis/widget/dialog/AskAgainDialog$1;-><init>(Lcom/zeusis/widget/dialog/AskAgainDialog;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_3
    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->setContentView(Landroid/view/View;)V

    .line 90
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050186

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 91
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050187

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 90
    invoke-virtual {p0, v9, v6, v7, v9}, Lcom/zeusis/widget/dialog/BaseDialog;->contentMargin(IIII)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 42
    return-void

    .line 50
    .end local v0    # "content":Landroid/view/View;
    .end local v4    # "touch_view":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x1090127

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 65
    .restart local v0    # "content":Landroid/view/View;
    :cond_5
    iget-object v6, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mMessage:Landroid/widget/TextView;

    mul-int/lit8 v7, v2, 0x1c

    div-int/lit8 v7, v7, 0x64

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto :goto_1
.end method


# virtual methods
.method public getAskAgain()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mAsk:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCheckbox()Lcom/zeusis/widget/checkbox/ZeusisCheckbox;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mCheckbox:Lcom/zeusis/widget/checkbox/ZeusisCheckbox;

    return-object v0
.end method

.method public getmMessage()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 111
    iget-object v4, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mMessage:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 112
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 113
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 114
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 115
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 116
    .local v2, "screenWidth":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 117
    .local v1, "screenHeight":I
    if-le v1, v2, :cond_1

    .line 118
    iget-object v4, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mMessage:Landroid/widget/TextView;

    shr-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 110
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "screenHeight":I
    .end local v2    # "screenWidth":I
    .end local v3    # "wm":Landroid/view/WindowManager;
    :cond_0
    :goto_0
    return-void

    .line 120
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local v1    # "screenHeight":I
    .restart local v2    # "screenWidth":I
    .restart local v3    # "wm":Landroid/view/WindowManager;
    :cond_1
    iget-object v4, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mMessage:Landroid/widget/TextView;

    mul-int/lit8 v5, v1, 0x1c

    div-int/lit8 v5, v5, 0x64

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 96
    invoke-super {p0}, Lcom/zeusis/widget/dialog/BaseDialog;->onStart()V

    .line 97
    invoke-virtual {p0}, Lcom/zeusis/widget/dialog/BaseDialog;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mMessageText:Ljava/lang/CharSequence;

    .line 101
    :cond_0
    invoke-super {p0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->setContentView(Landroid/view/View;)V

    .line 102
    iget v0, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mStyle:I

    if-nez v0, :cond_2

    const v0, 0x10304d7

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/zeusis/widget/dialog/AskAgainDialog;->initContent(IZ)V

    .line 103
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mIconLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v1, v2}, Lcom/zeusis/widget/dialog/AskAgainDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 95
    :cond_1
    :goto_1
    return-void

    .line 102
    :cond_2
    iget v0, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mStyle:I

    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/AskAgainDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->resetContentMarginTop(I)Lcom/zeusis/widget/dialog/BaseDialog;

    goto :goto_1
.end method

.method public setMaxMessageHeight(I)V
    .locals 1
    .param p1, "maxHeight"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 154
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/AskAgainDialog;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_0
    return-object p0
.end method

.method public setMessageIcon(I)Lcom/zeusis/widget/dialog/AskAgainDialog;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 133
    iput p1, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mIconId:I

    .line 134
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mIconLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AskAgainDialog;->mIconLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :cond_0
    return-object p0
.end method
