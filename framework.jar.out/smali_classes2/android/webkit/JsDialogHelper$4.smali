.class Landroid/webkit/JsDialogHelper$4;
.super Ljava/lang/Object;
.source "JsDialogHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/JsDialogHelper;->showDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/JsDialogHelper;


# direct methods
.method constructor <init>(Landroid/webkit/JsDialogHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/webkit/JsDialogHelper;

    .prologue
    .line 153
    iput-object p1, p0, Landroid/webkit/JsDialogHelper$4;->this$0:Landroid/webkit/JsDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/webkit/JsDialogHelper$4;->this$0:Landroid/webkit/JsDialogHelper;

    invoke-static {v0}, Landroid/webkit/JsDialogHelper;->-get1(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 157
    iget-object v0, p0, Landroid/webkit/JsDialogHelper$4;->this$0:Landroid/webkit/JsDialogHelper;

    invoke-static {v0}, Landroid/webkit/JsDialogHelper;->-get0(Landroid/webkit/JsDialogHelper;)Lcom/zeusis/widget/dialog/ZeusisDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeusis/widget/dialog/BaseDialog;->dismiss()V

    .line 158
    iget-object v0, p0, Landroid/webkit/JsDialogHelper$4;->this$0:Landroid/webkit/JsDialogHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkit/JsDialogHelper;->-set0(Landroid/webkit/JsDialogHelper;Lcom/zeusis/widget/dialog/ZeusisDialog;)Lcom/zeusis/widget/dialog/ZeusisDialog;

    .line 155
    return-void
.end method
