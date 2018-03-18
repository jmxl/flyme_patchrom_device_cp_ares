.class Lse/dirac/acs/api/Filter$1;
.super Ljava/lang/Object;
.source "Filter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/acs/api/Filter;
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
        "Lse/dirac/acs/api/Filter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lse/dirac/acs/api/Filter$1;->createFromParcel(Landroid/os/Parcel;)Lse/dirac/acs/api/Filter;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lse/dirac/acs/api/Filter;
    .locals 1

    .prologue
    .line 146
    invoke-static {p1}, Lse/dirac/acs/api/Filter;->access$000(Landroid/os/Parcel;)Lse/dirac/acs/api/Filter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lse/dirac/acs/api/Filter$1;->newArray(I)[Lse/dirac/acs/api/Filter;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lse/dirac/acs/api/Filter;
    .locals 1

    .prologue
    .line 151
    new-array v0, p1, [Lse/dirac/acs/api/Filter;

    return-object v0
.end method
