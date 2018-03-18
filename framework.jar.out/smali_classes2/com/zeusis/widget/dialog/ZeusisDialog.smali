.class public Lcom/zeusis/widget/dialog/ZeusisDialog;
.super Lcom/zeusis/widget/dialog/BaseDialog;
.source "ZeusisDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeusis/widget/dialog/ZeusisDialog$1;,
        Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;,
        Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;
    }
.end annotation


# static fields
.field protected static final MODE_CUSTOM:I = 0x4

.field protected static final MODE_ITEMS:I = 0x2

.field protected static final MODE_MESSAGE:I = 0x1

.field protected static final MODE_MULTI_ITEMS:I = 0x3

.field protected static final MODE_NONE:I


# instance fields
.field private mCheckBoxStyle:I

.field private mCheckBoxTrackColors:[I

.field private mContext:Landroid/content/Context;

.field private mHideDividerLine:Z

.field private mInternalAdapter:Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;

.field private mInternalListView:Landroid/widget/ListView;

.field private mItemHeight:I

.field private mItemTextAppearance:I

.field private mMessage:Landroid/widget/TextView;

.field private mMessageTextAppearanceId:I

.field private mMessageTextColor:I

.field private final mMessageTextSize:F

.field private mMode:I

.field private mOnDividerInsetListener:Lcom/zeusis/widget/dialog/OnDividerInsetListener;

.field private mRadioButtonStyle:I

.field private mScrollView:Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;


# direct methods
.method static synthetic -get0(Lcom/zeusis/widget/dialog/ZeusisDialog;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/zeusis/widget/dialog/ZeusisDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/zeusis/widget/dialog/ZeusisDialog;)Lcom/zeusis/widget/dialog/OnDividerInsetListener;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mOnDividerInsetListener:Lcom/zeusis/widget/dialog/OnDividerInsetListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 91
    const v0, 0x10304d7

    invoke-direct {p0, p1, v0}, Lcom/zeusis/widget/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 50
    filled-new-array {v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mCheckBoxTrackColors:[I

    .line 800
    new-instance v0, Lcom/zeusis/widget/dialog/ZeusisDialog$1;

    invoke-direct {v0, p0}, Lcom/zeusis/widget/dialog/ZeusisDialog$1;-><init>(Lcom/zeusis/widget/dialog/ZeusisDialog;)V

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mOnDividerInsetListener:Lcom/zeusis/widget/dialog/OnDividerInsetListener;

    .line 92
    iput-object p1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mContext:Landroid/content/Context;

    .line 93
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessageTextSize:F

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "style"    # I

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/zeusis/widget/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 50
    filled-new-array {v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mCheckBoxTrackColors:[I

    .line 800
    new-instance v0, Lcom/zeusis/widget/dialog/ZeusisDialog$1;

    invoke-direct {v0, p0}, Lcom/zeusis/widget/dialog/ZeusisDialog$1;-><init>(Lcom/zeusis/widget/dialog/ZeusisDialog;)V

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mOnDividerInsetListener:Lcom/zeusis/widget/dialog/OnDividerInsetListener;

    .line 98
    iput-object p1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mContext:Landroid/content/Context;

    .line 99
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessageTextSize:F

    .line 96
    return-void
.end method

.method private checkItems()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    iget v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMode:I

    if-ne v1, v3, :cond_4

    .line 104
    invoke-virtual {p0}, Lcom/zeusis/widget/dialog/BaseDialog;->hasTitle()Z

    move-result v1

    if-nez v1, :cond_4

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "cs":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessage:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 108
    .local v0, "cs":Ljava/lang/CharSequence;
    invoke-super {p0, v2}, Lcom/zeusis/widget/dialog/BaseDialog;->contentView(Landroid/view/View;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 109
    iput-object v2, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessage:Landroid/widget/TextView;

    .line 111
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_0
    if-eqz v0, :cond_4

    .line 112
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mScrollView:Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;

    if-nez v1, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisDialog;->initScrollView()V

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessage:Landroid/widget/TextView;

    if-nez v1, :cond_2

    .line 116
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisDialog;->initNotitleMessageView()V

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mScrollView:Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessage:Landroid/widget/TextView;

    if-eq v1, v2, :cond_3

    .line 119
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mScrollView:Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 120
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mScrollView:Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;

    iget-object v2, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 123
    :cond_3
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 125
    iput v3, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMode:I

    .line 126
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mScrollView:Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;

    invoke-super {p0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->contentView(Landroid/view/View;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 127
    invoke-super {p0, v3}, Lcom/zeusis/widget/dialog/BaseDialog;->hasMessage(Z)V

    .line 102
    :cond_4
    return-void
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 793
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 794
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0

    .line 796
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private initMessageView()V
    .locals 3

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 231
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x1090122

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessage:Landroid/widget/TextView;

    .line 232
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessage:Landroid/widget/TextView;

    iget v2, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessageTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    return-void
.end method

.method private varargs initMultiChoiceListView(Ljava/util/ArrayList;[I)V
    .locals 10
    .param p2, "selectedIndexes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;>;"
    const v5, 0x1060123

    const/4 v3, 0x0

    .line 437
    iget v1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mDialogContentMarginTop:I

    iget v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mDialogContentMarginBottom:I

    invoke-virtual {p0, v3, v1, v3, v2}, Lcom/zeusis/widget/dialog/BaseDialog;->contentMargin(IIII)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 438
    new-instance v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    .line 439
    new-instance v1, Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;-><init>(Lcom/zeusis/widget/dialog/ZeusisDialog;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalAdapter:Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;

    .line 441
    iget-boolean v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mHideDividerLine:Z

    if-nez v1, :cond_1

    .line 443
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;

    .line 444
    .local v9, "item0":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    iget v1, v9, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->leftResId:I

    if-nez v1, :cond_0

    .line 445
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/zeusis/widget/dialog/ZeusisDialog;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 446
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v4, 0x18

    invoke-static {v2, v4}, Lcom/zeusis/widget/dialog/ZeusisDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    move v4, v3

    move v5, v3

    .line 445
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 447
    .local v0, "insetDrawable":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 451
    .end local v0    # "insetDrawable":Landroid/graphics/drawable/InsetDrawable;
    :goto_0
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050181

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 457
    .end local v9    # "item0":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    :goto_1
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalAdapter:Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 459
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 461
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lcom/zeusis/widget/dialog/ZeusisDialog;->setScrollListener(Landroid/widget/ListView;)V

    .line 463
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "item$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;

    .line 464
    .local v7, "item":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    const/4 v1, 0x3

    iput v1, v7, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->rightWidgetStyle:I

    goto :goto_2

    .line 449
    .end local v7    # "item":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    .end local v8    # "item$iterator":Ljava/util/Iterator;
    .restart local v9    # "item0":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    :cond_0
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/zeusis/widget/dialog/ZeusisDialog;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 453
    .end local v9    # "item0":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    :cond_1
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    goto :goto_1

    .line 466
    .restart local v8    # "item$iterator":Ljava/util/Iterator;
    :cond_2
    if-nez p2, :cond_3

    .line 467
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_4

    .line 468
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    invoke-virtual {v1, v6, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 467
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 471
    .end local v6    # "i":I
    :cond_3
    array-length v1, p2

    :goto_4
    if-ge v3, v1, :cond_4

    aget v6, p2, v3

    .line 472
    .restart local v6    # "i":I
    iget-object v2, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v2, v6, v4}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 471
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 436
    .end local v6    # "i":I
    :cond_4
    return-void
.end method

.method private initNotitleMessageView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    iput-object v2, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessage:Landroid/widget/TextView;

    .line 237
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 238
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x1090121

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessage:Landroid/widget/TextView;

    .line 239
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessage:Landroid/widget/TextView;

    iget v2, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessageTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    return-void
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 212
    new-instance v0, Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;-><init>(Lcom/zeusis/widget/dialog/ZeusisDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mScrollView:Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;

    .line 214
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mScrollView:Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 215
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mScrollView:Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 216
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mScrollView:Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 217
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mScrollView:Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 211
    return-void
.end method

.method private initSingleChoiceListView(Ljava/util/ArrayList;I)V
    .locals 11
    .param p2, "selectedIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;>;"
    const v5, 0x1060123

    const/4 v4, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 479
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    :cond_0
    return-void

    .line 482
    :cond_1
    iget v1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mDialogContentMarginTop:I

    iget v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mDialogContentMarginBottom:I

    invoke-virtual {p0, v3, v1, v3, v2}, Lcom/zeusis/widget/dialog/BaseDialog;->contentMargin(IIII)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 483
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "item$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;

    .line 484
    .local v7, "item":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    iput v4, v7, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->rightWidgetStyle:I

    .line 485
    iget v1, v7, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->leftResId:I

    if-eqz v1, :cond_2

    .line 486
    iput v4, v7, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->leftIconSize:I

    goto :goto_0

    .line 489
    .end local v7    # "item":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    :cond_3
    new-instance v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    .line 490
    new-instance v1, Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;-><init>(Lcom/zeusis/widget/dialog/ZeusisDialog;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalAdapter:Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;

    .line 492
    iget-boolean v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mHideDividerLine:Z

    if-nez v1, :cond_6

    .line 494
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;

    .line 495
    .local v9, "item0":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    iget v1, v9, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->leftResId:I

    if-nez v1, :cond_5

    .line 496
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/zeusis/widget/dialog/ZeusisDialog;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 497
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v4, 0x18

    invoke-static {v2, v4}, Lcom/zeusis/widget/dialog/ZeusisDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    move v4, v3

    move v5, v3

    .line 496
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 498
    .local v0, "insetDrawable":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 502
    .end local v0    # "insetDrawable":Landroid/graphics/drawable/InsetDrawable;
    :goto_1
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050181

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 508
    .end local v9    # "item0":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    :goto_2
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalAdapter:Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 509
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    invoke-virtual {v1, v10}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 510
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lcom/zeusis/widget/dialog/ZeusisDialog;->setScrollListener(Landroid/widget/ListView;)V

    .line 511
    if-ltz p2, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p2, v1, :cond_7

    .line 512
    :cond_4
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_8

    .line 513
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    invoke-virtual {v1, v6, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 512
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 500
    .end local v6    # "i":I
    .restart local v9    # "item0":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    :cond_5
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/zeusis/widget/dialog/ZeusisDialog;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 504
    .end local v9    # "item0":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    :cond_6
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    goto :goto_2

    .line 516
    :cond_7
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    invoke-virtual {v1, p2, v10}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 478
    :cond_8
    return-void
.end method

.method private setScrollListener(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 402
    new-instance v0, Lcom/zeusis/widget/dialog/ZeusisDialog$2;

    invoke-direct {v0, p0}, Lcom/zeusis/widget/dialog/ZeusisDialog$2;-><init>(Lcom/zeusis/widget/dialog/ZeusisDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 400
    return-void
.end method


# virtual methods
.method public applyStyle(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 10
    .param p1, "resId"    # I

    .prologue
    const/4 v9, 0x0

    .line 142
    invoke-super {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->applyStyle(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 144
    if-nez p1, :cond_0

    .line 145
    return-object p0

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/android/internal/R$styleable;->ZeusisDialog:[I

    invoke-virtual {v7, p1, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 148
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    .line 149
    .local v4, "textAppearance":I
    const/4 v5, 0x0

    .line 150
    .local v5, "textColor":I
    const/4 v6, 0x0

    .line 152
    .local v6, "textColorDefined":Z
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v3, v2, :cond_7

    .line 153
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 155
    .local v1, "attr":I
    if-nez v1, :cond_2

    .line 156
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 152
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    :cond_2
    const/4 v7, 0x1

    if-ne v1, v7, :cond_3

    .line 158
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 159
    const/4 v6, 0x1

    goto :goto_1

    .line 160
    :cond_3
    const/4 v7, 0x2

    if-ne v1, v7, :cond_4

    .line 161
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/zeusis/widget/dialog/ZeusisDialog;->radioButtonStyle(I)Lcom/zeusis/widget/dialog/ZeusisDialog;

    goto :goto_1

    .line 162
    :cond_4
    const/4 v7, 0x3

    if-ne v1, v7, :cond_5

    .line 163
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/zeusis/widget/dialog/ZeusisDialog;->checkBoxStyle(I)Lcom/zeusis/widget/dialog/ZeusisDialog;

    goto :goto_1

    .line 164
    :cond_5
    const/4 v7, 0x4

    if-ne v1, v7, :cond_6

    .line 165
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/zeusis/widget/dialog/ZeusisDialog;->itemHeight(I)Lcom/zeusis/widget/dialog/ZeusisDialog;

    goto :goto_1

    .line 166
    :cond_6
    const/4 v7, 0x5

    if-ne v1, v7, :cond_1

    .line 167
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/zeusis/widget/dialog/ZeusisDialog;->itemTextAppearance(I)Lcom/zeusis/widget/dialog/ZeusisDialog;

    goto :goto_1

    .line 170
    .end local v1    # "attr":I
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    if-eqz v4, :cond_8

    .line 173
    invoke-virtual {p0, v4}, Lcom/zeusis/widget/dialog/ZeusisDialog;->messageTextAppearance(I)Lcom/zeusis/widget/dialog/ZeusisDialog;

    .line 175
    :cond_8
    if-eqz v6, :cond_9

    .line 176
    invoke-virtual {p0, v5}, Lcom/zeusis/widget/dialog/ZeusisDialog;->messageTextColor(I)Lcom/zeusis/widget/dialog/ZeusisDialog;

    .line 178
    :cond_9
    return-object p0
.end method

.method public checkBoxStyle(I)Lcom/zeusis/widget/dialog/ZeusisDialog;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 335
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mCheckBoxStyle:I

    if-eq v0, p1, :cond_0

    .line 336
    iput p1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mCheckBoxStyle:I

    .line 340
    :cond_0
    return-object p0
.end method

.method public clearContent()Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Lcom/zeusis/widget/dialog/BaseDialog;->clearContent()Lcom/zeusis/widget/dialog/BaseDialog;

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMode:I

    .line 186
    return-object p0
.end method

.method public contentView(Landroid/view/View;)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mScrollView:Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;

    if-nez v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisDialog;->initScrollView()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mScrollView:Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_1

    .line 202
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mScrollView:Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 203
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mScrollView:Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 204
    const/4 v0, 0x4

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMode:I

    .line 205
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mScrollView:Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;

    invoke-super {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->contentView(Landroid/view/View;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 208
    :cond_1
    return-object p0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    return v0

    .line 702
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getSelectedIndexes()[I
    .locals 9

    .prologue
    .line 660
    iget-object v8, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v1

    .line 661
    .local v1, "count":I
    if-lez v1, :cond_1

    .line 662
    new-array v7, v1, [I

    .line 663
    .local v7, "ret":[I
    iget-object v8, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 664
    .local v0, "checkedMap":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    .line 665
    .local v6, "mapCount":I
    const/4 v3, 0x0

    .line 666
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v4, v3

    .end local v3    # "index":I
    .local v4, "index":I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 667
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 668
    .local v5, "key":I
    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 669
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    aput v5, v7, v4

    .line 666
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_0

    .line 672
    .end local v5    # "key":I
    :cond_0
    return-object v7

    .line 674
    .end local v0    # "checkedMap":Landroid/util/SparseBooleanArray;
    .end local v2    # "i":I
    .end local v4    # "index":I
    .end local v6    # "mapCount":I
    .end local v7    # "ret":[I
    :cond_1
    const/4 v8, 0x0

    return-object v8

    .restart local v0    # "checkedMap":Landroid/util/SparseBooleanArray;
    .restart local v2    # "i":I
    .restart local v4    # "index":I
    .restart local v5    # "key":I
    .restart local v6    # "mapCount":I
    .restart local v7    # "ret":[I
    :cond_2
    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_1
.end method

.method public getSelectedValue()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/zeusis/widget/dialog/ZeusisDialog;->getSelectedIndex()I

    move-result v1

    .line 711
    .local v1, "selectIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 712
    iget-object v2, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalAdapter:Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;

    invoke-virtual {v2, v1}, Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;

    .line 713
    .local v0, "item":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    iget-object v2, v0, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->primaryText:Ljava/lang/String;

    return-object v2

    .line 715
    .end local v0    # "item":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSelectedValues()[Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 682
    invoke-virtual {p0}, Lcom/zeusis/widget/dialog/ZeusisDialog;->getSelectedIndexes()[I

    move-result-object v1

    .line 683
    .local v1, "indexs":[I
    if-eqz v1, :cond_1

    .line 684
    array-length v4, v1

    new-array v3, v4, [Ljava/lang/CharSequence;

    .line 685
    .local v3, "select":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 686
    iget-object v4, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalAdapter:Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;

    aget v5, v1, v0

    invoke-virtual {v4, v5}, Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;

    .line 687
    .local v2, "item":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    iget-object v4, v2, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->primaryText:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 689
    .end local v2    # "item":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    :cond_0
    return-object v3

    .line 691
    .end local v0    # "i":I
    .end local v3    # "select":[Ljava/lang/CharSequence;
    :cond_1
    return-object v4
.end method

.method public hideDividerLine()Lcom/zeusis/widget/dialog/ZeusisDialog;
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mHideDividerLine:Z

    .line 351
    return-object p0
.end method

.method public itemHeight(I)Lcom/zeusis/widget/dialog/ZeusisDialog;
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 361
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mItemHeight:I

    if-eq v0, p1, :cond_0

    .line 362
    iput p1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mItemHeight:I

    .line 366
    :cond_0
    return-object p0
.end method

.method public itemTextAppearance(I)Lcom/zeusis/widget/dialog/ZeusisDialog;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 376
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mItemTextAppearance:I

    if-eq v0, p1, :cond_0

    .line 377
    iput p1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mItemTextAppearance:I

    .line 381
    :cond_0
    return-object p0
.end method

.method public items(Ljava/util/ArrayList;I)Lcom/zeusis/widget/dialog/ZeusisDialog;
    .locals 1
    .param p2, "selectedIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;",
            ">;I)",
            "Lcom/zeusis/widget/dialog/ZeusisDialog;"
        }
    .end annotation

    .prologue
    .line 557
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;>;"
    invoke-direct {p0, p1, p2}, Lcom/zeusis/widget/dialog/ZeusisDialog;->initSingleChoiceListView(Ljava/util/ArrayList;I)V

    .line 558
    const/4 v0, 0x2

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMode:I

    .line 559
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    invoke-super {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->contentView(Landroid/view/View;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 560
    return-object p0
.end method

.method public items([Ljava/lang/CharSequence;I)Lcom/zeusis/widget/dialog/ZeusisDialog;
    .locals 7
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "selectedIndex"    # I

    .prologue
    const/4 v6, 0x2

    .line 535
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;>;"
    if-eqz p1, :cond_0

    .line 537
    const/4 v3, 0x0

    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 538
    .local v0, "cs":Ljava/lang/CharSequence;
    new-instance v2, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;

    invoke-direct {v2}, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;-><init>()V

    .line 539
    .local v2, "item":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->primaryText:Ljava/lang/String;

    .line 540
    iput v6, v2, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->leftIconSize:I

    .line 541
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 544
    .end local v0    # "cs":Ljava/lang/CharSequence;
    .end local v2    # "item":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/zeusis/widget/dialog/ZeusisDialog;->initSingleChoiceListView(Ljava/util/ArrayList;I)V

    .line 545
    iput v6, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMode:I

    .line 546
    iget-object v3, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    invoke-super {p0, v3}, Lcom/zeusis/widget/dialog/BaseDialog;->contentView(Landroid/view/View;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 547
    return-object p0
.end method

.method public message(I)Lcom/zeusis/widget/dialog/ZeusisDialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 276
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/ZeusisDialog;->message(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/ZeusisDialog;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public message(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/ZeusisDialog;
    .locals 3
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    .line 249
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mScrollView:Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;

    if-nez v0, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisDialog;->initScrollView()V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessage:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisDialog;->initMessageView()V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mScrollView:Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessage:Landroid/widget/TextView;

    if-eq v0, v1, :cond_2

    .line 256
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mScrollView:Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 257
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mScrollView:Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;

    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 262
    iput v2, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMode:I

    .line 263
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mScrollView:Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;

    invoke-super {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->contentView(Landroid/view/View;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 264
    invoke-super {p0, v2}, Lcom/zeusis/widget/dialog/BaseDialog;->hasMessage(Z)V

    .line 266
    :cond_3
    return-object p0
.end method

.method public messageTextAppearance(I)Lcom/zeusis/widget/dialog/ZeusisDialog;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 290
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessageTextAppearanceId:I

    if-eq v0, p1, :cond_0

    .line 291
    iput p1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessageTextAppearanceId:I

    .line 292
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessageTextAppearanceId:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 295
    :cond_0
    return-object p0
.end method

.method public messageTextColor(I)Lcom/zeusis/widget/dialog/ZeusisDialog;
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 305
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessageTextColor:I

    if-eq v0, p1, :cond_0

    .line 306
    iput p1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessageTextColor:I

    .line 307
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    :cond_0
    return-object p0
.end method

.method public varargs multiChoiceItems(Ljava/util/ArrayList;[I)Lcom/zeusis/widget/dialog/ZeusisDialog;
    .locals 1
    .param p2, "selectedIndexes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;",
            ">;[I)",
            "Lcom/zeusis/widget/dialog/ZeusisDialog;"
        }
    .end annotation

    .prologue
    .line 600
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;>;"
    invoke-direct {p0, p1, p2}, Lcom/zeusis/widget/dialog/ZeusisDialog;->initMultiChoiceListView(Ljava/util/ArrayList;[I)V

    .line 601
    const/4 v0, 0x3

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMode:I

    .line 602
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    invoke-super {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->contentView(Landroid/view/View;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 603
    return-object p0
.end method

.method public varargs multiChoiceItems([Ljava/lang/CharSequence;[I)Lcom/zeusis/widget/dialog/ZeusisDialog;
    .locals 6
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "selectedIndexes"    # [I

    .prologue
    .line 577
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;>;"
    if-eqz p1, :cond_0

    .line 579
    const/4 v3, 0x0

    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 580
    .local v0, "cs":Ljava/lang/CharSequence;
    new-instance v2, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;

    invoke-direct {v2}, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;-><init>()V

    .line 581
    .local v2, "item":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->primaryText:Ljava/lang/String;

    .line 582
    const/4 v5, 0x2

    iput v5, v2, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->leftIconSize:I

    .line 583
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 586
    .end local v0    # "cs":Ljava/lang/CharSequence;
    .end local v2    # "item":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/zeusis/widget/dialog/ZeusisDialog;->initMultiChoiceListView(Ljava/util/ArrayList;[I)V

    .line 587
    const/4 v3, 0x3

    iput v3, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mMode:I

    .line 588
    iget-object v3, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    invoke-super {p0, v3}, Lcom/zeusis/widget/dialog/BaseDialog;->contentView(Landroid/view/View;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 589
    return-object p0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Lcom/zeusis/widget/dialog/BaseDialog;->onStart()V

    .line 137
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisDialog;->checkItems()V

    .line 135
    return-void
.end method

.method public radioButtonStyle(I)Lcom/zeusis/widget/dialog/ZeusisDialog;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 320
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mRadioButtonStyle:I

    if-eq v0, p1, :cond_0

    .line 321
    iput p1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mRadioButtonStyle:I

    .line 325
    :cond_0
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/dialog/ZeusisDialog;->message(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/ZeusisDialog;

    .line 279
    return-void
.end method

.method public setSingleChoiceItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)Lcom/zeusis/widget/dialog/ZeusisDialog;
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 629
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mInternalListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 632
    :cond_0
    return-object p0
.end method

.method public setTrackBoxColor(II)Lcom/zeusis/widget/dialog/ZeusisDialog;
    .locals 2
    .param p1, "colorOn"    # I
    .param p2, "colorOff"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mCheckBoxTrackColors:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 345
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog;->mCheckBoxTrackColors:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 346
    return-object p0
.end method

.method public title(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->title(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;

    move-result-object v0

    return-object v0
.end method
