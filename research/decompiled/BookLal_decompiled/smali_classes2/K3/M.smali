.class public final LK3/M;
.super LK3/a;
.source "SourceFile"


# instance fields
.field public final c:I

.field public final d:Z

.field public final e:Ly3/c;


# direct methods
.method public constructor <init>(LK3/m;I)V
    .locals 1

    sget-object v0, LG3/d;->c:Ly3/c;

    invoke-direct {p0, p1}, LK3/a;-><init>(Lz3/d;)V

    iput p2, p0, LK3/M;->c:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LK3/M;->d:Z

    iput-object v0, p0, LK3/M;->e:Ly3/c;

    return-void
.end method


# virtual methods
.method public final e(Lz3/g;)V
    .locals 4

    new-instance v0, LK3/L;

    iget v1, p0, LK3/M;->c:I

    iget-boolean v2, p0, LK3/M;->d:Z

    iget-object v3, p0, LK3/M;->e:Ly3/c;

    invoke-direct {v0, p1, v1, v2, v3}, LK3/L;-><init>(Lz3/g;IZLy3/c;)V

    iget-object p1, p0, LK3/a;->b:Lz3/d;

    invoke-virtual {p1, v0}, Lz3/d;->d(Lz3/g;)V

    return-void
.end method
