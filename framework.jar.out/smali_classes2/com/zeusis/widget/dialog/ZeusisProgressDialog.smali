.class public Lcom/zeusis/widget/dialog/ZeusisProgressDialog;
.super Lcom/zeusis/widget/dialog/BaseDialog;
.source "ZeusisProgressDialog.java"


# static fields
.field private static final STYLE_CYCLE:I = 0x0

.field private static final STYLE_HORIZ:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mMax:I

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressText:Ljava/lang/String;

.field private mProgressTextAppearanceId:I

.field private mProgressTextView:Landroid/widget/TextView;

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Lcom/zeusis/widget/dialog/ZeusisProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->updateProgressText()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v1, 0x10304d9

    .line 54
    invoke-direct {p0, p1, v1}, Lcom/zeusis/widget/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressStyle:I

    .line 55
    iput-object p1, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p0, v1}, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->applyStyle(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "style"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/zeusis/widget/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressStyle:I

    .line 61
    iput-object p1, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p0, p2}, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->applyStyle(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 59
    return-void
.end method

.method private initFormats()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 67
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 65
    return-void
.end method

.method private initProgressDialog(I)V
    .locals 9
    .param p1, "style"    # I

    .prologue
    const v4, 0x102116e

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 123
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 124
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .line 125
    .local v0, "content":Landroid/view/View;
    iget v2, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressStyle:I

    if-nez v2, :cond_1

    .line 126
    const v2, 0x1090129

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressTextView:Landroid/widget/TextView;

    .line 128
    iget-object v2, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->contentView(Landroid/view/View;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 121
    return-void

    .line 130
    .local v0, "content":Landroid/view/View;
    :cond_1
    const v2, 0x109012a

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 131
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressTextView:Landroid/widget/TextView;

    .line 132
    iget-object v2, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressText:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const v2, 0x102116f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 134
    iget-object v2, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    .line 135
    new-instance v2, Lcom/zeusis/widget/dialog/ZeusisProgressDialog$1;

    invoke-direct {v2, p0}, Lcom/zeusis/widget/dialog/ZeusisProgressDialog$1;-><init>(Lcom/zeusis/widget/dialog/ZeusisProgressDialog;)V

    iput-object v2, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private initProgressState()V
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mMax:I

    if-lez v0, :cond_0

    .line 150
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mMax:I

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->setMax(I)V

    .line 152
    :cond_0
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressVal:I

    if-lez v0, :cond_1

    .line 153
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->setProgress(I)V

    .line 155
    :cond_1
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mSecondaryProgressVal:I

    if-lez v0, :cond_2

    .line 156
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->setSecondaryProgress(I)V

    .line 158
    :cond_2
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mIncrementBy:I

    if-lez v0, :cond_3

    .line 159
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->incrementProgressBy(I)V

    .line 161
    :cond_3
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mIncrementSecondaryBy:I

    if-lez v0, :cond_4

    .line 162
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 165
    :cond_4
    iget-boolean v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->setIndeterminate(Z)V

    .line 148
    return-void
.end method

.method private onProgressChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 292
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private updateProgressText()V
    .locals 9

    .prologue
    .line 169
    iget-object v4, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    .line 170
    .local v1, "progress":I
    iget-object v4, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 171
    .local v0, "max":I
    iget-object v4, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    if-eqz v4, :cond_0

    .line 172
    int-to-double v4, v1

    int-to-double v6, v0

    div-double v2, v4, v6

    .line 173
    .local v2, "percent":D
    iget-object v4, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressText:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    invoke-virtual {v7, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .end local v2    # "percent":D
    :cond_0
    return-void
.end method


# virtual methods
.method public applyStyle(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 10
    .param p1, "style"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->applyStyle(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 76
    if-nez p1, :cond_0

    .line 77
    return-object p0

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/internal/R$styleable;->ZeusisProgressBarDialog:[I

    invoke-virtual {v6, p1, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    .line 82
    .local v4, "ptri":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 83
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 85
    .local v1, "attr":I
    if-nez v1, :cond_2

    .line 86
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressStyle:I

    .line 82
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    :cond_2
    if-ne v1, v9, :cond_4

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v5

    .line 89
    .local v5, "type":I
    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressText:Ljava/lang/String;

    goto :goto_1

    .line 91
    :cond_3
    if-ne v5, v9, :cond_1

    .line 92
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    goto :goto_1

    .line 95
    .end local v5    # "type":I
    :cond_4
    const/4 v6, 0x2

    if-ne v1, v6, :cond_1

    .line 96
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressTextAppearanceId:I

    goto :goto_1

    .line 100
    .end local v1    # "attr":I
    :cond_5
    iget-object v6, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressText:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 101
    if-lez v4, :cond_7

    .line 102
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressText:Ljava/lang/String;

    .line 112
    :cond_6
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->initFormats()V

    .line 115
    invoke-direct {p0, p1}, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->initProgressDialog(I)V

    .line 118
    return-object p0

    .line 104
    :cond_7
    iget v6, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressStyle:I

    if-nez v6, :cond_8

    .line 105
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1040690

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressText:Ljava/lang/String;

    goto :goto_2

    .line 107
    :cond_8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1040691

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressText:Ljava/lang/String;

    goto :goto_2
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    return v0

    .line 247
    :cond_0
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0

    .line 215
    :cond_0
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressVal:I

    return v0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    return v0

    .line 231
    :cond_0
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mSecondaryProgressVal:I

    return v0
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 253
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->onProgressChanged()V

    .line 250
    :goto_0
    return-void

    .line 255
    :cond_0
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mIncrementBy:I

    goto :goto_0
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 262
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->onProgressChanged()V

    .line 259
    :goto_0
    return-void

    .line 264
    :cond_0
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mIncrementSecondaryBy:I

    goto :goto_0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    return v0

    .line 283
    :cond_0
    iget-boolean v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mIndeterminate:Z

    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Lcom/zeusis/widget/dialog/BaseDialog;->onStart()V

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mHasStarted:Z

    .line 181
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->initProgressState()V

    .line 178
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Lcom/zeusis/widget/dialog/BaseDialog;->onStop()V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mHasStarted:Z

    .line 185
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mIndeterminate:Z

    if-eq v0, p1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 272
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->onProgressChanged()V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iput-boolean p1, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 237
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->onProgressChanged()V

    .line 234
    :goto_0
    return-void

    .line 239
    :cond_0
    iput p1, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 204
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->onProgressChanged()V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iput p1, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 288
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->onProgressChanged()V

    .line 286
    return-void
.end method

.method public setProgressText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 192
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressStyle:I

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->updateProgressText()V

    goto :goto_0
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 221
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->onProgressChanged()V

    .line 218
    :goto_0
    return-void

    .line 223
    :cond_0
    iput p1, p0, Lcom/zeusis/widget/dialog/ZeusisProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method
