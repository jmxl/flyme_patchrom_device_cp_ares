.class Lcom/zeusis/widget/dialog/ZeusisDialog$1;
.super Ljava/lang/Object;
.source "ZeusisDialog.java"

# interfaces
.implements Lcom/zeusis/widget/dialog/OnDividerInsetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/widget/dialog/ZeusisDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zeusis/widget/dialog/ZeusisDialog;


# direct methods
.method constructor <init>(Lcom/zeusis/widget/dialog/ZeusisDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/widget/dialog/ZeusisDialog;

    .prologue
    .line 800
    iput-object p1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$1;->this$0:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inset(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 803
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$1;->this$0:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1060123

    invoke-static {v2, v3}, Lcom/zeusis/widget/dialog/ZeusisDialog;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 804
    .local v0, "insetDrawable":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$1;->this$0:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/ZeusisDialog;->-get0(Lcom/zeusis/widget/dialog/ZeusisDialog;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 805
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$1;->this$0:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/ZeusisDialog;->-get0(Lcom/zeusis/widget/dialog/ZeusisDialog;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$1;->this$0:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050181

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 802
    return-void
.end method
