.class Lse/dirac/acs/api/Output$1;
.super Ljava/lang/Object;
.source "Output.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/acs/api/Output;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lse/dirac/acs/api/Output;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lse/dirac/acs/api/Output$1;->createFromParcel(Landroid/os/Parcel;)Lse/dirac/acs/api/Output;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lse/dirac/acs/api/Output;
    .locals 2

    .prologue
    .line 19
    :try_start_0
    invoke-static {}, Lse/dirac/acs/api/Output;->values()[Lse/dirac/acs/api/Output;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Landroid/os/BadParcelableException;

    invoke-direct {v1, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lse/dirac/acs/api/Output$1;->newArray(I)[Lse/dirac/acs/api/Output;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lse/dirac/acs/api/Output;
    .locals 1

    .prologue
    .line 27
    new-array v0, p1, [Lse/dirac/acs/api/Output;

    return-object v0
.end method
