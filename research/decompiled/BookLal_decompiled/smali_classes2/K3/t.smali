.class public final LK3/t;
.super Lz3/h;
.source "SourceFile"


# instance fields
.field public final a:LK3/B;


# direct methods
.method public constructor <init>(LK3/B;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK3/t;->a:LK3/B;

    return-void
.end method


# virtual methods
.method public final c(Lz3/j;)V
    .locals 1

    new-instance v0, LK3/s;

    invoke-direct {v0, p1}, LK3/s;-><init>(Lz3/j;)V

    iget-object p1, p0, LK3/t;->a:LK3/B;

    invoke-virtual {p1, v0}, Lz3/d;->d(Lz3/g;)V

    return-void
.end method

.method public final d()Lz3/d;
    .locals 2

    new-instance v0, LK3/r;

    iget-object v1, p0, LK3/t;->a:LK3/B;

    invoke-direct {v0, v1}, LK3/a;-><init>(Lz3/d;)V

    return-object v0
.end method
