.class public Lse/dirac/android/SystemSettings;
.super Lse/dirac/Settings;
.source "SystemSettings.java"


# static fields
.field private static final prefixes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 6
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "persist"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "ro"

    aput-object v2, v0, v1

    sput-object v0, Lse/dirac/android/SystemSettings;->prefixes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lse/dirac/android/SystemSettings$1;

    invoke-direct {v0}, Lse/dirac/android/SystemSettings$1;-><init>()V

    invoke-direct {p0, p1, v0}, Lse/dirac/Settings;-><init>(Ljava/lang/String;Lse/dirac/Settings$Backend;)V

    .line 36
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lse/dirac/android/SystemSettings;->prefixes:[Ljava/lang/String;

    return-object v0
.end method
