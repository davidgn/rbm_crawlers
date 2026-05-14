.class public final Lx3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/c;


# instance fields
.field public final a:Lj3/G;

.field public final b:Lj3/G;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj3/G;

    new-instance v1, Lz1/b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lj3/G;-><init>(Lx3/b;)V

    iput-object v0, p0, Lx3/a;->a:Lj3/G;

    new-instance v0, Lj3/G;

    new-instance v1, Lz1/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lj3/G;-><init>(Lx3/b;)V

    iput-object v0, p0, Lx3/a;->b:Lj3/G;

    return-void
.end method
