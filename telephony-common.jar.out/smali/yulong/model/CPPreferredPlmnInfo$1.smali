.class final Lyulong/model/CPPreferredPlmnInfo$1;
.super Ljava/lang/Object;
.source "CPPreferredPlmnInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyulong/model/CPPreferredPlmnInfo;
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
        "Lyulong/model/CPPreferredPlmnInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lyulong/model/CPPreferredPlmnInfo$1;->createFromParcel(Landroid/os/Parcel;)Lyulong/model/CPPreferredPlmnInfo;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lyulong/model/CPPreferredPlmnInfo;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 125
    new-instance v0, Lyulong/model/CPPreferredPlmnInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 125
    invoke-direct/range {v0 .. v7}, Lyulong/model/CPPreferredPlmnInfo;-><init>(IILjava/lang/String;IIII)V

    .line 133
    .local v0, "plmnList":Lyulong/model/CPPreferredPlmnInfo;
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lyulong/model/CPPreferredPlmnInfo$1;->newArray(I)[Lyulong/model/CPPreferredPlmnInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lyulong/model/CPPreferredPlmnInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 137
    new-array v0, p1, [Lyulong/model/CPPreferredPlmnInfo;

    return-object v0
.end method
