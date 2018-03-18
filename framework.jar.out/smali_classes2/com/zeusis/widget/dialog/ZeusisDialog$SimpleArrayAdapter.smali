.class Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "ZeusisDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/widget/dialog/ZeusisDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleArrayAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zeusis/widget/dialog/ZeusisDialog;


# direct methods
.method public constructor <init>(Lcom/zeusis/widget/dialog/ZeusisDialog;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/widget/dialog/ZeusisDialog;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 814
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;>;"
    iput-object p1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;->this$0:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 815
    iput-object p2, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;->mContext:Landroid/content/Context;

    .line 816
    iput-object p3, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;->mItems:Ljava/util/ArrayList;

    .line 814
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 826
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 831
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 837
    if-nez p2, :cond_1

    .line 838
    new-instance v2, Lcom/zeusis/widget/dialog/ZeusisItemView;

    iget-object v3, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/zeusis/widget/dialog/ZeusisItemView;-><init>(Landroid/content/Context;)V

    .line 839
    .local v2, "zeusisItemView":Lcom/zeusis/widget/dialog/ZeusisItemView;
    if-nez p1, :cond_0

    .line 840
    iget-object v3, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;->this$0:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-static {v3}, Lcom/zeusis/widget/dialog/ZeusisDialog;->-get2(Lcom/zeusis/widget/dialog/ZeusisDialog;)Lcom/zeusis/widget/dialog/OnDividerInsetListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zeusis/widget/dialog/ZeusisItemView;->setOnDividerInsetListener(Lcom/zeusis/widget/dialog/OnDividerInsetListener;)V

    .line 845
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$SimpleArrayAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;

    .line 846
    .local v0, "dataItem":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    iget-object v3, v0, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->primaryText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->text1:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v3}, Lcom/zeusis/widget/dialog/ZeusisItemView;->setPrimaryTextView(Ljava/lang/CharSequence;)V

    .line 847
    iget-object v3, v0, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->secondaryText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->text2:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v3}, Lcom/zeusis/widget/dialog/ZeusisItemView;->setSecondaryTextView(Ljava/lang/CharSequence;)V

    .line 848
    iget v3, v0, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->leftResId:I

    if-eqz v3, :cond_4

    .line 849
    iget v3, v0, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->leftResId:I

    invoke-virtual {v2, v3}, Lcom/zeusis/widget/dialog/ZeusisItemView;->setLeftIcon(I)V

    .line 855
    :goto_3
    iget v3, v0, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->leftIconSize:I

    invoke-virtual {v2, v3}, Lcom/zeusis/widget/dialog/ZeusisItemView;->setLeftIconSizeStyle(I)V

    .line 856
    iget v1, v0, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->rightWidgetStyle:I

    .line 857
    .local v1, "rightWidgetStyle":I
    packed-switch v1, :pswitch_data_0

    .line 872
    invoke-virtual {v2}, Lcom/zeusis/widget/dialog/ZeusisItemView;->hideRightWidget()V

    .line 876
    :goto_4
    return-object v2

    .end local v0    # "dataItem":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    .end local v1    # "rightWidgetStyle":I
    .end local v2    # "zeusisItemView":Lcom/zeusis/widget/dialog/ZeusisItemView;
    :cond_1
    move-object v2, p2

    .line 843
    check-cast v2, Lcom/zeusis/widget/dialog/ZeusisItemView;

    .restart local v2    # "zeusisItemView":Lcom/zeusis/widget/dialog/ZeusisItemView;
    goto :goto_0

    .line 846
    .restart local v0    # "dataItem":Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;
    :cond_2
    iget-object v3, v0, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->primaryText:Ljava/lang/String;

    goto :goto_1

    .line 847
    :cond_3
    iget-object v3, v0, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->secondaryText:Ljava/lang/String;

    goto :goto_2

    .line 850
    :cond_4
    iget-object v3, v0, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    .line 851
    iget-object v3, v0, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/zeusis/widget/dialog/ZeusisItemView;->setLeftIconDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 853
    :cond_5
    invoke-virtual {v2, v4}, Lcom/zeusis/widget/dialog/ZeusisItemView;->setLeftIcon(I)V

    goto :goto_3

    .line 859
    .restart local v1    # "rightWidgetStyle":I
    :pswitch_0
    invoke-virtual {v2}, Lcom/zeusis/widget/dialog/ZeusisItemView;->showCheckBox()V

    goto :goto_4

    .line 863
    :pswitch_1
    invoke-virtual {v2}, Lcom/zeusis/widget/dialog/ZeusisItemView;->showRightImageIcon()V

    .line 864
    iget v3, v0, Lcom/zeusis/widget/dialog/SimpleAdapterDataItem;->rightResId:I

    invoke-virtual {v2, v3}, Lcom/zeusis/widget/dialog/ZeusisItemView;->setRightIcon(I)V

    goto :goto_4

    .line 868
    :pswitch_2
    invoke-virtual {v2}, Lcom/zeusis/widget/dialog/ZeusisItemView;->showRadioButton()V

    goto :goto_4

    .line 857
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
