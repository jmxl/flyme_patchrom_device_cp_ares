.class Lcom/android/server/AppOpsService$Shell;
.super Landroid/os/ShellCommand;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shell"
.end annotation


# instance fields
.field final mInterface:Lcom/android/internal/app/IAppOpsService;

.field final mInternal:Lcom/android/server/AppOpsService;

.field mode:I

.field modeStr:Ljava/lang/String;

.field op:I

.field opStr:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field packageUid:I

.field userId:I


# direct methods
.method constructor <init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/AppOpsService;)V
    .locals 1
    .param p1, "iface"    # Lcom/android/internal/app/IAppOpsService;
    .param p2, "internal"    # Lcom/android/server/AppOpsService;

    .prologue
    .line 1947
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 1939
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 1948
    iput-object p1, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 1949
    iput-object p2, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    .line 1947
    return-void
.end method

.method private strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "err"    # Ljava/io/PrintWriter;

    .prologue
    .line 1965
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1966
    :catch_0
    move-exception v0

    .line 1969
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .line 1970
    :catch_1
    move-exception v1

    .line 1973
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-static {p1}, Landroid/app/AppOpsManager;->strDebugOpToOp(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    return v2

    .line 1974
    :catch_2
    move-exception v0

    .line 1975
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1976
    const/4 v2, -0x1

    return v2
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 1954
    invoke-static {p0, p1}, Lcom/android/server/AppOpsService;->onShellCommand(Lcom/android/server/AppOpsService$Shell;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 1

    .prologue
    .line 1959
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1960
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/AppOpsService;->dumpCommandHelp(Ljava/io/PrintWriter;)V

    .line 1958
    return-void
.end method

.method parseUserOpMode(ILjava/io/PrintWriter;)I
    .locals 5
    .param p1, "defMode"    # I
    .param p2, "err"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2000
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 2001
    iput-object v2, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 2002
    iput-object v2, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 2003
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .local v0, "argument":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 2004
    const-string/jumbo v1, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2005
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    goto :goto_0

    .line 2007
    :cond_1
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 2008
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    goto :goto_0

    .line 2009
    :cond_2
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2010
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 2015
    :cond_3
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 2016
    const-string/jumbo v1, "Error: Operation not specified."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2017
    return v3

    .line 2019
    :cond_4
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 2020
    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-gez v1, :cond_5

    .line 2021
    return v3

    .line 2023
    :cond_5
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 2024
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->mode:I

    if-gez v1, :cond_7

    .line 2025
    return v3

    .line 2028
    :cond_6
    iput p1, p0, Lcom/android/server/AppOpsService$Shell;->mode:I

    .line 2030
    :cond_7
    return v4
.end method

.method parseUserPackageOp(ZLjava/io/PrintWriter;)I
    .locals 7
    .param p1, "reqOp"    # Z
    .param p2, "err"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 2034
    iput v2, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 2035
    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 2036
    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 2037
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .local v0, "argument":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 2038
    const-string/jumbo v1, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2039
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    goto :goto_0

    .line 2041
    :cond_1
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 2042
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 2043
    :cond_2
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2044
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 2049
    :cond_3
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 2050
    const-string/jumbo v1, "Error: Package name not specified."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2051
    return v5

    .line 2052
    :cond_4
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v1, :cond_5

    if-eqz p1, :cond_5

    .line 2053
    const-string/jumbo v1, "Error: Operation not specified."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2054
    return v5

    .line 2056
    :cond_5
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 2057
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 2058
    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-gez v1, :cond_7

    .line 2059
    return v5

    .line 2062
    :cond_6
    iput v5, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 2064
    :cond_7
    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    if-ne v1, v2, :cond_8

    .line 2065
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 2067
    :cond_8
    const-string/jumbo v1, "root"

    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2068
    iput v6, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    .line 2073
    :goto_1
    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    if-gez v1, :cond_a

    .line 2074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: No UID for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2075
    return v5

    .line 2070
    :cond_9
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 2071
    iget v3, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    const/16 v4, 0x2000

    .line 2070
    invoke-interface {v1, v2, v4, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    goto :goto_1

    .line 2077
    :cond_a
    return v6
.end method

.method strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "modeStr"    # Ljava/lang/String;
    .param p2, "err"    # Ljava/io/PrintWriter;

    .prologue
    .line 1981
    const-string/jumbo v1, "allow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1983
    const/4 v1, 0x0

    return v1

    .line 1981
    :cond_0
    const-string/jumbo v1, "deny"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1985
    const/4 v1, 0x2

    return v1

    .line 1981
    :cond_1
    const-string/jumbo v1, "ignore"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1987
    const/4 v1, 0x1

    return v1

    .line 1981
    :cond_2
    const-string/jumbo v1, "default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1989
    const/4 v1, 0x3

    return v1

    .line 1992
    :cond_3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1993
    :catch_0
    move-exception v0

    .line 1995
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: Mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1996
    const/4 v1, -0x1

    return v1
.end method
