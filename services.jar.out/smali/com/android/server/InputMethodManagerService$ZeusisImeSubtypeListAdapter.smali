.class Lcom/android/server/InputMethodManagerService$ZeusisImeSubtypeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZeusisImeSubtypeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final I56DP:I

.field private final I72DP:I

.field public mCheckedItem:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p4, "checkedItem"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    const/4 v2, 0x1

    .line 3498
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 3500
    iput p2, p0, Lcom/android/server/InputMethodManagerService$ZeusisImeSubtypeListAdapter;->mTextViewResourceId:I

    .line 3501
    iput-object p3, p0, Lcom/android/server/InputMethodManagerService$ZeusisImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    .line 3502
    iput p4, p0, Lcom/android/server/InputMethodManagerService$ZeusisImeSubtypeListAdapter;->mCheckedItem:I

    .line 3503
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$ZeusisImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 3505
    const/high16 v0, 0x42600000    # 56.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/InputMethodManagerService$ZeusisImeSubtypeListAdapter;->I56DP:I

    .line 3506
    const/high16 v0, 0x42900000    # 72.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/InputMethodManagerService$ZeusisImeSubtypeListAdapter;->I72DP:I

    .line 3497
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 3511
    if-eqz p2, :cond_1

    move-object v6, p2

    .line 3512
    .local v6, "view":Landroid/view/View;
    :goto_0
    if-ltz p1, :cond_0

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$ZeusisImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt p1, v7, :cond_2

    :cond_0
    return-object v6

    .line 3511
    .end local v6    # "view":Landroid/view/View;
    :cond_1
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$ZeusisImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v8, p0, Lcom/android/server/InputMethodManagerService$ZeusisImeSubtypeListAdapter;->mTextViewResourceId:I

    invoke-virtual {v7, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "view":Landroid/view/View;
    goto :goto_0

    .line 3513
    :cond_2
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$ZeusisImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 3514
    .local v3, "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v2, v3, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    .line 3515
    .local v2, "imeName":Ljava/lang/CharSequence;
    iget-object v5, v3, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 3516
    .local v5, "subtypeName":Ljava/lang/CharSequence;
    const v7, 0x1020014

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3517
    .local v0, "firstTextView":Landroid/widget/TextView;
    const v7, 0x1020015

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3518
    .local v4, "secondTextView":Landroid/widget/TextView;
    const v7, 0x1021167

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3519
    .local v1, "imageView":Landroid/widget/ImageView;
    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3521
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3523
    iget v7, p0, Lcom/android/server/InputMethodManagerService$ZeusisImeSubtypeListAdapter;->I56DP:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 3525
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3526
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3528
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3540
    :goto_1
    iget v7, p0, Lcom/android/server/InputMethodManagerService$ZeusisImeSubtypeListAdapter;->mCheckedItem:I

    if-ne p1, v7, :cond_3

    .line 3541
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3544
    :cond_3
    return-object v6

    .line 3530
    :cond_4
    iget v7, p0, Lcom/android/server/InputMethodManagerService$ZeusisImeSubtypeListAdapter;->I72DP:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 3532
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3533
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3535
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3536
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3537
    const/4 v7, 0x0

    const v8, 0x3fa66666    # 1.3f

    invoke-virtual {v4, v7, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto :goto_1
.end method
