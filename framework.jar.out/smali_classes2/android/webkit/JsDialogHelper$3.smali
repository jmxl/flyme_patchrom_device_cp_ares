.class Landroid/webkit/JsDialogHelper$3;
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

.field final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/webkit/JsDialogHelper;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Landroid/webkit/JsDialogHelper;
    .param p2, "val$edit"    # Landroid/widget/EditText;

    .prologue
    .line 140
    iput-object p1, p0, Landroid/webkit/JsDialogHelper$3;->this$0:Landroid/webkit/JsDialogHelper;

    iput-object p2, p0, Landroid/webkit/JsDialogHelper$3;->val$edit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v0, p0, Landroid/webkit/JsDialogHelper$3;->this$0:Landroid/webkit/JsDialogHelper;

    invoke-static {v0}, Landroid/webkit/JsDialogHelper;->-get1(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/JsDialogHelper$3;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Landroid/webkit/JsDialogHelper$3;->this$0:Landroid/webkit/JsDialogHelper;

    invoke-static {v0}, Landroid/webkit/JsDialogHelper;->-get0(Landroid/webkit/JsDialogHelper;)Lcom/zeusis/widget/dialog/ZeusisDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeusis/widget/dialog/BaseDialog;->dismiss()V

    .line 145
    iget-object v0, p0, Landroid/webkit/JsDialogHelper$3;->this$0:Landroid/webkit/JsDialogHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkit/JsDialogHelper;->-set0(Landroid/webkit/JsDialogHelper;Lcom/zeusis/widget/dialog/ZeusisDialog;)Lcom/zeusis/widget/dialog/ZeusisDialog;

    .line 142
    return-void
.end method
