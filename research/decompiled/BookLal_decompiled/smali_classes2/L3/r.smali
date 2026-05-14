.class public final LL3/r;
.super LL3/a;
.source "SourceFile"


# instance fields
.field public final b:LE3/b;

.field public final c:LE3/b;


# direct methods
.method public constructor <init>(Lz3/h;LE3/b;LE3/b;)V
    .locals 0

    invoke-direct {p0, p1}, LL3/a;-><init>(Lz3/k;)V

    iput-object p2, p0, LL3/r;->b:LE3/b;

    iput-object p3, p0, LL3/r;->c:LE3/b;

    return-void
.end method


# virtual methods
.method public final c(Lz3/j;)V
    .locals 2

    new-instance v0, LJ3/d;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p0, v1}, LJ3/d;-><init>(Lz3/j;Ljava/lang/Object;I)V

    iget-object p1, p0, LL3/a;->a:Lz3/k;

    check-cast p1, Lz3/h;

    invoke-virtual {p1, v0}, Lz3/h;->b(Lz3/j;)V

    return-void
.end method
