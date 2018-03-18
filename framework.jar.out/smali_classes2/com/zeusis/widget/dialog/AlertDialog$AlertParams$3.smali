.class Lcom/zeusis/widget/dialog/AlertDialog$AlertParams$3;
.super Ljava/lang/Object;
.source "AlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->apply(Lcom/zeusis/widget/dialog/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

.field final synthetic val$dialog:Lcom/zeusis/widget/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;Lcom/zeusis/widget/dialog/AlertDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;
    .param p2, "val$dialog"    # Lcom/zeusis/widget/dialog/AlertDialog;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams$3;->this$1:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iput-object p2, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams$3;->val$dialog:Lcom/zeusis/widget/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams$3;->this$1:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iget-object v0, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams$3;->this$1:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iget-object v0, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams$3;->val$dialog:Lcom/zeusis/widget/dialog/AlertDialog;

    const/4 v2, -0x3

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 119
    return-void
.end method
