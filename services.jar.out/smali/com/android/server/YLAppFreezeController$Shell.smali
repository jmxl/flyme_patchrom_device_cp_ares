.class Lcom/android/server/YLAppFreezeController$Shell;
.super Landroid/os/ShellCommand;
.source "YLAppFreezeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/YLAppFreezeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Shell"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/YLAppFreezeController;

.field userId:I


# direct methods
.method constructor <init>(Lcom/android/server/YLAppFreezeController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/YLAppFreezeController;

    .prologue
    .line 978
    iput-object p1, p0, Lcom/android/server/YLAppFreezeController$Shell;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 979
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/YLAppFreezeController$Shell;->userId:I

    .line 978
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController$Shell;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/YLAppFreezeController;->onShellCommand(Lcom/android/server/YLAppFreezeController$Shell;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 3

    .prologue
    .line 987
    invoke-virtual {p0}, Lcom/android/server/YLAppFreezeController$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 988
    .local v0, "writer":Ljava/io/PrintWriter;
    const-string/jumbo v1, "YLAppFreezeController"

    const-string/jumbo v2, "onHelp:"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    return-void
.end method
