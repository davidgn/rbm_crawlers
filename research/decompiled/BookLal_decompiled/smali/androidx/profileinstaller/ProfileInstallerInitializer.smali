.class public Landroidx/profileinstaller/ProfileInstallerInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB0/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LB0/b;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, LD/m;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0, p1}, LD/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Ls0/f;->a(Ljava/lang/Runnable;)V

    new-instance p1, Ly3/c;

    const/16 v0, 0x1b

    invoke-direct {p1, v0}, Ly3/c;-><init>(I)V

    return-object p1
.end method

.method public final dependencies()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
