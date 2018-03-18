.class Lcom/journeyui/server/SmartPolicyProxy;
.super Ljava/lang/Object;
.source "ISmartPolicyImpl.java"

# interfaces
.implements Lcom/journeyui/server/ISmartPolicyService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/journeyui/server/SmartPolicyProxy;->mRemote:Landroid/os/IBinder;

    .line 33
    return-void
.end method


# virtual methods
.method public activityResumed(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 41
    .local v0, "data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.journeyui.smartpolicy.ISmartPolicyService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/journeyui/server/SmartPolicyProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/journeyui/server/SmartPolicyProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method
