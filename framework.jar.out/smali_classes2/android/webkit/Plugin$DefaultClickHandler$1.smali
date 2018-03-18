.class Landroid/webkit/Plugin$DefaultClickHandler$1;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/Plugin$DefaultClickHandler;->handleClickEvent(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/Plugin$DefaultClickHandler;


# direct methods
.method constructor <init>(Landroid/webkit/Plugin$DefaultClickHandler;)V
    .locals 0
    .param p1, "this$1"    # Landroid/webkit/Plugin$DefaultClickHandler;

    .prologue
    .line 217
    iput-object p1, p0, Landroid/webkit/Plugin$DefaultClickHandler$1;->this$1:Landroid/webkit/Plugin$DefaultClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 220
    iget-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler$1;->this$1:Landroid/webkit/Plugin$DefaultClickHandler;

    invoke-static {v0}, Landroid/webkit/Plugin$DefaultClickHandler;->-get0(Landroid/webkit/Plugin$DefaultClickHandler;)Lcom/zeusis/widget/dialog/ZeusisDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeusis/widget/dialog/BaseDialog;->dismiss()V

    .line 221
    iget-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler$1;->this$1:Landroid/webkit/Plugin$DefaultClickHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkit/Plugin$DefaultClickHandler;->-set0(Landroid/webkit/Plugin$DefaultClickHandler;Lcom/zeusis/widget/dialog/ZeusisDialog;)Lcom/zeusis/widget/dialog/ZeusisDialog;

    .line 219
    return-void
.end method
