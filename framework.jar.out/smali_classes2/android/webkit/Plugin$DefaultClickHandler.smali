.class Landroid/webkit/Plugin$DefaultClickHandler;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Landroid/webkit/Plugin$PreferencesClickHandler;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/Plugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultClickHandler"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

.field final synthetic this$0:Landroid/webkit/Plugin;


# direct methods
.method static synthetic -get0(Landroid/webkit/Plugin$DefaultClickHandler;)Lcom/zeusis/widget/dialog/ZeusisDialog;
    .locals 1

    iget-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    return-object v0
.end method

.method static synthetic -set0(Landroid/webkit/Plugin$DefaultClickHandler;Lcom/zeusis/widget/dialog/ZeusisDialog;)Lcom/zeusis/widget/dialog/ZeusisDialog;
    .locals 0

    iput-object p1, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    return-object p1
.end method

.method private constructor <init>(Landroid/webkit/Plugin;)V
    .locals 0
    .param p1, "this$0"    # Landroid/webkit/Plugin;

    .prologue
    .line 196
    iput-object p1, p0, Landroid/webkit/Plugin$DefaultClickHandler;->this$0:Landroid/webkit/Plugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/Plugin;Landroid/webkit/Plugin$DefaultClickHandler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/webkit/Plugin;

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/Plugin$DefaultClickHandler;-><init>(Landroid/webkit/Plugin;)V

    return-void
.end method


# virtual methods
.method public handleClickEvent(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-direct {v0, p1}, Lcom/zeusis/widget/dialog/ZeusisDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    .line 213
    iget-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    iget-object v1, p0, Landroid/webkit/Plugin$DefaultClickHandler;->this$0:Landroid/webkit/Plugin;

    invoke-static {v1}, Landroid/webkit/Plugin;->-get1(Landroid/webkit/Plugin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/ZeusisDialog;->title(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 214
    iget-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    iget-object v1, p0, Landroid/webkit/Plugin$DefaultClickHandler;->this$0:Landroid/webkit/Plugin;

    invoke-static {v1}, Landroid/webkit/Plugin;->-get0(Landroid/webkit/Plugin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/ZeusisDialog;->message(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/ZeusisDialog;

    .line 215
    iget-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveAction(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 216
    iget-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->cancelable(Z)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 217
    iget-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    new-instance v1, Landroid/webkit/Plugin$DefaultClickHandler$1;

    invoke-direct {v1, p0}, Landroid/webkit/Plugin$DefaultClickHandler$1;-><init>(Landroid/webkit/Plugin$DefaultClickHandler;)V

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveActionClickListener(Landroid/view/View$OnClickListener;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 224
    iget-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 200
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-virtual {v0}, Lcom/zeusis/widget/dialog/BaseDialog;->dismiss()V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    .line 233
    return-void
.end method
