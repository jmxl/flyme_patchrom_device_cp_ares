.class final Landroid/app/SystemServiceRegistry$77;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/os/freeze/YLAppFreezManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 827
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/os/freeze/YLAppFreezManager;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 830
    const-string/jumbo v2, "appfreeze"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 831
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/freeze/IYLAppFreezeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/freeze/IYLAppFreezeController;

    move-result-object v1

    .line 832
    .local v1, "service":Landroid/os/freeze/IYLAppFreezeController;
    if-nez v1, :cond_0

    .line 833
    const-string/jumbo v2, "SystemServiceRegistry"

    const-string/jumbo v3, "Failed to get appfreeze manager service."

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_0
    new-instance v2, Landroid/os/freeze/YLAppFreezManager;

    invoke-direct {v2, p1, v1}, Landroid/os/freeze/YLAppFreezManager;-><init>(Landroid/content/Context;Landroid/os/freeze/IYLAppFreezeController;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 829
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$77;->createService(Landroid/app/ContextImpl;)Landroid/os/freeze/YLAppFreezManager;

    move-result-object v0

    return-object v0
.end method
