.class Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$3;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .prologue
    .line 1400
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$3;->this$1:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$3;->this$1:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 1402
    return-void
.end method
