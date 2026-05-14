.class public final LJ3/e;
.super Lz3/a;
.source "SourceFile"


# instance fields
.field public final a:Lz3/a;

.field public final b:LE3/b;

.field public final c:LE3/a;


# direct methods
.method public constructor <init>(Lz3/a;LE3/b;LE3/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ3/e;->a:Lz3/a;

    iput-object p2, p0, LJ3/e;->b:LE3/b;

    iput-object p3, p0, LJ3/e;->c:LE3/a;

    return-void
.end method


# virtual methods
.method public final e(Lz3/b;)V
    .locals 1

    new-instance v0, LJ3/d;

    invoke-direct {v0, p0, p1}, LJ3/d;-><init>(LJ3/e;Lz3/b;)V

    iget-object p1, p0, LJ3/e;->a:Lz3/a;

    invoke-virtual {p1, v0}, Lz3/a;->d(Lz3/b;)V

    return-void
.end method
