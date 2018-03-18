.class public Landroid/os/rootcheck/RootCheckService;
.super Landroid/os/rootcheck/IRootCheckManager$Stub;
.source "RootCheckService.java"


# static fields
.field private static final DBG:Z = true

.field private static final ROOT:B = 0x54t

.field private static final S_ISGID:I = 0x400

.field private static final S_ISUID:I = 0x800

.field private static TAG:Ljava/lang/String; = null

.field private static final UNROOT:B = 0x46t

.field private static final kSystemRootStateDisable:I = 0x0

.field private static final kSystemRootStateEnable:I = 0x1

.field private static final kSystemRootStateUnknow:I = -0x1

.field private static systemRootState:I


# instance fields
.field private factoryflag:Z

.field private mContext:Landroid/content/Context;

.field private root:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "RootCheckService"

    sput-object v0, Landroid/os/rootcheck/RootCheckService;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, -0x1

    sput v0, Landroid/os/rootcheck/RootCheckService;->systemRootState:I

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/os/rootcheck/IRootCheckManager$Stub;-><init>()V

    .line 30
    iput-boolean v0, p0, Landroid/os/rootcheck/RootCheckService;->root:Z

    .line 31
    iput-boolean v0, p0, Landroid/os/rootcheck/RootCheckService;->factoryflag:Z

    .line 37
    iput-object p1, p0, Landroid/os/rootcheck/RootCheckService;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {p0}, Landroid/os/rootcheck/RootCheckService;->init()V

    .line 35
    return-void
.end method

.method private getFileList(Ljava/io/File;)[Ljava/io/File;
    .locals 4
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 111
    sget-object v1, Landroid/os/rootcheck/RootCheckService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFileList from path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    sget-object v1, Landroid/os/rootcheck/RootCheckService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFileList path ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    return-object v1

    .line 117
    :cond_0
    sget-object v1, Landroid/os/rootcheck/RootCheckService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFileList path ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] not exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/os/rootcheck/RootCheckService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFileList error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSetSuid(I)Z
    .locals 3
    .param p1, "st_mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 128
    and-int/lit16 v1, p1, 0x800

    const/16 v2, 0x800

    if-eq v1, v2, :cond_0

    and-int/lit16 v1, p1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkFactoryFlag()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    const-string/jumbo v1, "PRODUCTLINE"

    const-string/jumbo v2, "FactoryFlag"

    invoke-static {v1, v2}, Lcom/zeusis/oeminfo/OemInfo;->getElem(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 63
    .local v0, "b":[B
    array-length v1, v0

    if-lez v1, :cond_0

    aget-byte v1, v0, v3

    const/16 v2, 0x54

    if-ne v2, v1, :cond_0

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/rootcheck/RootCheckService;->factoryflag:Z

    .line 66
    :cond_0
    sget-object v1, Landroid/os/rootcheck/RootCheckService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkFactoryFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/os/rootcheck/RootCheckService;->factoryflag:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-boolean v1, p0, Landroid/os/rootcheck/RootCheckService;->factoryflag:Z

    return v1
.end method

.method public init()V
    .locals 2

    .prologue
    .line 43
    :try_start_0
    invoke-virtual {p0}, Landroid/os/rootcheck/RootCheckService;->checkFactoryFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/os/rootcheck/RootCheckService;->setOemRootInfo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public rootCheck()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v14, 0x1

    const/4 v8, 0x0

    .line 72
    sget-object v7, Landroid/os/rootcheck/RootCheckService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "methodrootCheck..begin"

    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget v7, Landroid/os/rootcheck/RootCheckService;->systemRootState:I

    if-ne v7, v14, :cond_0

    .line 74
    return v14

    .line 75
    :cond_0
    sget v7, Landroid/os/rootcheck/RootCheckService;->systemRootState:I

    if-nez v7, :cond_1

    .line 76
    return v8

    .line 78
    :cond_1
    const/4 v3, 0x0

    .line 81
    .local v3, "f":Ljava/io/File;
    const-string/jumbo v7, "PATH"

    invoke-static {v7}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, ":"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "kSuSearchPaths":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_0
    array-length v7, v5

    if-ge v4, v7, :cond_6

    .line 84
    new-instance v7, Ljava/io/File;

    aget-object v10, v5, v4

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Landroid/os/rootcheck/RootCheckService;->getFileList(Ljava/io/File;)[Ljava/io/File;

    move-result-object v6

    .line 85
    .local v6, "mFilelist":[Ljava/io/File;
    sget-object v10, Landroid/os/rootcheck/RootCheckService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Filelist size = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v6, :cond_3

    move-object v7, v9

    :goto_1
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-nez v6, :cond_4

    .line 83
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 85
    :cond_3
    array-length v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1

    .line 87
    :cond_4
    array-length v10, v6

    move v7, v8

    :goto_2
    if-ge v7, v10, :cond_2

    aget-object v2, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    .local v2, "efile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v11

    iget v1, v11, Landroid/system/StructStat;->st_mode:I

    .line 90
    .local v1, "eStMode":I
    sget-object v11, Landroid/os/rootcheck/RootCheckService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "checking suid for = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " st_mode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0, v1}, Landroid/os/rootcheck/RootCheckService;->isSetSuid(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 93
    sget-object v11, Landroid/os/rootcheck/RootCheckService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "got suid file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " with st_mode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v11, 0x1

    sput v11, Landroid/os/rootcheck/RootCheckService;->systemRootState:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    return v14

    .line 97
    .end local v1    # "eStMode":I
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v11, Landroid/os/rootcheck/RootCheckService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "rootCheck stmode soft Exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 102
    .end local v2    # "efile":Ljava/io/File;
    .end local v6    # "mFilelist":[Ljava/io/File;
    :catch_1
    move-exception v0

    .line 103
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v7, Landroid/os/rootcheck/RootCheckService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "rootCheck Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    sput v8, Landroid/os/rootcheck/RootCheckService;->systemRootState:I

    .line 106
    sget-object v7, Landroid/os/rootcheck/RootCheckService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "methodrootCheck..end"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return v8
.end method

.method public setOemRootInfo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/os/rootcheck/RootCheckService;->rootCheck()Z

    move-result v1

    iput-boolean v1, p0, Landroid/os/rootcheck/RootCheckService;->root:Z

    .line 53
    sget-object v1, Landroid/os/rootcheck/RootCheckService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rootCheckresult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/os/rootcheck/RootCheckService;->root:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 55
    .local v0, "oemValue":[B
    iget-boolean v1, p0, Landroid/os/rootcheck/RootCheckService;->root:Z

    if-eqz v1, :cond_0

    .line 56
    const/16 v1, 0x54

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 57
    const-string/jumbo v1, "MISC"

    const-string/jumbo v2, "user_root_flag"

    invoke-static {v1, v2, v0}, Lcom/zeusis/oeminfo/OemInfo;->setElem(Ljava/lang/String;Ljava/lang/String;[B)I

    .line 51
    :cond_0
    return-void
.end method
