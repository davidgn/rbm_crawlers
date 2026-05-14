.class public final Lh/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/b;


# instance fields
.field public final synthetic a:Lh/i;


# direct methods
.method public constructor <init>(Lh/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/h;->a:Lh/i;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/activity/p;)V
    .locals 2

    iget-object p1, p0, Lh/h;->a:Lh/i;

    invoke-virtual {p1}, Lh/i;->f()Lh/n;

    move-result-object v0

    invoke-virtual {v0}, Lh/n;->a()V

    invoke-virtual {p1}, Landroidx/activity/p;->getSavedStateRegistry()Ly0/c;

    move-result-object p1

    const-string v1, "androidx:appcompat"

    invoke-virtual {p1, v1}, Ly0/c;->a(Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {v0}, Lh/n;->d()V

    return-void
.end method
