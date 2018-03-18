.class Lcom/zeusis/widget/dialog/AskAgainDialog$1;
.super Ljava/lang/Object;
.source "AskAgainDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zeusis/widget/dialog/AskAgainDialog;->initContent(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zeusis/widget/dialog/AskAgainDialog;


# direct methods
.method constructor <init>(Lcom/zeusis/widget/dialog/AskAgainDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/widget/dialog/AskAgainDialog;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/zeusis/widget/dialog/AskAgainDialog$1;->this$0:Lcom/zeusis/widget/dialog/AskAgainDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AskAgainDialog$1;->this$0:Lcom/zeusis/widget/dialog/AskAgainDialog;

    invoke-static {v0}, Lcom/zeusis/widget/dialog/AskAgainDialog;->-get0(Lcom/zeusis/widget/dialog/AskAgainDialog;)Lcom/zeusis/widget/checkbox/ZeusisCheckbox;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AskAgainDialog$1;->this$0:Lcom/zeusis/widget/dialog/AskAgainDialog;

    invoke-static {v0}, Lcom/zeusis/widget/dialog/AskAgainDialog;->-get0(Lcom/zeusis/widget/dialog/AskAgainDialog;)Lcom/zeusis/widget/checkbox/ZeusisCheckbox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    .line 82
    :cond_0
    return-void
.end method
