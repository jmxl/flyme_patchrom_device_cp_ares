.class public Landroid/util/BugManager;
.super Ljava/lang/Object;
.source "BugManager.java"


# static fields
.field private static final HAWKEYE_BUGMANAGER_CLASS:Ljava/lang/String; = "com.zeusis.hawkeye.BugManager"

.field private static final HAWKEYE_JAR:Ljava/lang/String; = "/system/framework/hawkeye.jar"

.field private static final TAG:Ljava/lang/String; = "BugManager"

.field private static mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsLoaded:Z

.field private static mReportEncFunc:Ljava/lang/reflect/Method;

.field private static mReportFunc:Ljava/lang/reflect/Method;


# instance fields
.field private mHawkeye:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/BugManager;->mIsLoaded:Z

    .line 47
    sput-object v1, Landroid/util/BugManager;->mReportFunc:Ljava/lang/reflect/Method;

    .line 48
    sput-object v1, Landroid/util/BugManager;->mReportEncFunc:Ljava/lang/reflect/Method;

    .line 49
    sput-object v1, Landroid/util/BugManager;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v4, p0, Landroid/util/BugManager;->mHawkeye:Ljava/lang/Object;

    .line 57
    sget-boolean v4, Landroid/util/BugManager;->mIsLoaded:Z

    if-nez v4, :cond_0

    .line 59
    const/4 v2, 0x0

    .line 62
    .local v2, "hawkeyeClass":Ljava/lang/Class;
    :try_start_0
    new-instance v3, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "/system/framework/hawkeye.jar"

    .line 63
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 62
    invoke-direct {v3, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 64
    .local v3, "hawkeyeClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v4, "com.zeusis.hawkeye.BugManager"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 65
    .local v2, "hawkeyeClass":Ljava/lang/Class;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    sput-object v4, Landroid/util/BugManager;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 67
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v0, v5

    .line 68
    .local v0, "argClasses":[Ljava/lang/Class;
    const-string/jumbo v4, "report"

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BugManager;->mReportFunc:Ljava/lang/reflect/Method;

    .line 69
    const-string/jumbo v4, "reportenc"

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BugManager;->mReportEncFunc:Ljava/lang/reflect/Method;

    .line 70
    const/4 v4, 0x1

    sput-boolean v4, Landroid/util/BugManager;->mIsLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "argClasses":[Ljava/lang/Class;
    .end local v2    # "hawkeyeClass":Ljava/lang/Class;
    .end local v3    # "hawkeyeClassLoader":Ldalvik/system/PathClassLoader;
    :cond_0
    :goto_0
    :try_start_1
    sget-object v4, Landroid/util/BugManager;->mConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v4, :cond_1

    .line 79
    sget-object v4, Landroid/util/BugManager;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Landroid/util/BugManager;->mHawkeye:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    :cond_1
    :goto_1
    return-void

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BugManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reflect failed - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 83
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BugManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "contructor invoke failed - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public report(ILjava/lang/String;)V
    .locals 6
    .param p1, "tag"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 90
    :try_start_0
    sget-object v1, Landroid/util/BugManager;->mReportFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 91
    sget-object v1, Landroid/util/BugManager;->mReportFunc:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/util/BugManager;->mHawkeye:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BugManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "report invoke failed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportenc(ILjava/lang/String;)V
    .locals 6
    .param p1, "tag"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 100
    :try_start_0
    sget-object v1, Landroid/util/BugManager;->mReportEncFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 101
    sget-object v1, Landroid/util/BugManager;->mReportEncFunc:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/util/BugManager;->mHawkeye:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BugManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "report invoke failed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
