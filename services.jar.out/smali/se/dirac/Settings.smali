.class public Lse/dirac/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/dirac/Settings$Backend;
    }
.end annotation


# instance fields
.field private final backend:Lse/dirac/Settings$Backend;

.field private final section:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lse/dirac/Settings$Backend;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lse/dirac/Settings;->section:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lse/dirac/Settings;->backend:Lse/dirac/Settings$Backend;

    .line 17
    return-void
.end method


# virtual methods
.method public final getInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lse/dirac/Settings;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 22
    :cond_0
    return p2
.end method

.method public final getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0, p1}, Lse/dirac/Settings;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 29
    :cond_0
    return-object v1
.end method

.method public final getStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, p1, v0}, Lse/dirac/Settings;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lse/dirac/Settings;->backend:Lse/dirac/Settings$Backend;

    iget-object v1, p0, Lse/dirac/Settings;->section:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lse/dirac/Settings$Backend;->getStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSubSection(Ljava/lang/String;)Lse/dirac/Settings;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lse/dirac/Settings;->section:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lse/dirac/Settings;->backend:Lse/dirac/Settings$Backend;

    invoke-interface {v1}, Lse/dirac/Settings$Backend;->getSectionDivider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Lse/dirac/Settings;

    iget-object v2, p0, Lse/dirac/Settings;->backend:Lse/dirac/Settings$Backend;

    invoke-direct {v1, v0, v2}, Lse/dirac/Settings;-><init>(Ljava/lang/String;Lse/dirac/Settings$Backend;)V

    return-object v1
.end method
