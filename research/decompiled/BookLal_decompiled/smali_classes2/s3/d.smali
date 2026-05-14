.class public final Ls3/d;
.super Lj3/S;
.source "SourceFile"


# static fields
.field public static final l:Ll3/f;


# instance fields
.field public final c:Ls3/b;

.field public final d:Ls3/c;

.field public e:Lj3/T;

.field public f:Lj3/S;

.field public g:Lj3/T;

.field public h:Lj3/S;

.field public i:Lj3/q;

.field public j:Lj3/B;

.field public k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll3/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ll3/f;-><init>(I)V

    sput-object v0, Ls3/d;->l:Ll3/f;

    return-void
.end method

.method public constructor <init>(Ls3/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls3/b;

    invoke-direct {v0, p0}, Ls3/b;-><init>(Ls3/d;)V

    iput-object v0, p0, Ls3/d;->c:Ls3/b;

    iput-object v0, p0, Ls3/d;->f:Lj3/S;

    iput-object v0, p0, Ls3/d;->h:Lj3/S;

    iput-object p1, p0, Ls3/d;->d:Ls3/c;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    invoke-virtual {p0}, Ls3/d;->g()Lj3/S;

    move-result-object v0

    invoke-virtual {v0}, Lj3/S;->b()Z

    move-result v0

    return v0
.end method

.method public final c(Lj3/r0;)V
    .locals 1

    invoke-virtual {p0}, Ls3/d;->g()Lj3/S;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj3/S;->c(Lj3/r0;)V

    return-void
.end method

.method public final d(Lj3/O;)V
    .locals 1

    invoke-virtual {p0}, Ls3/d;->g()Lj3/S;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj3/S;->d(Lj3/O;)V

    return-void
.end method

.method public final e()V
    .locals 1

    invoke-virtual {p0}, Ls3/d;->g()Lj3/S;

    move-result-object v0

    invoke-virtual {v0}, Lj3/S;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Ls3/d;->h:Lj3/S;

    invoke-virtual {v0}, Lj3/S;->f()V

    iget-object v0, p0, Ls3/d;->f:Lj3/S;

    invoke-virtual {v0}, Lj3/S;->f()V

    return-void
.end method

.method public final g()Lj3/S;
    .locals 2

    iget-object v0, p0, Ls3/d;->h:Lj3/S;

    iget-object v1, p0, Ls3/d;->c:Ls3/b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ls3/d;->f:Lj3/S;

    :cond_0
    return-object v0
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Ls3/d;->i:Lj3/q;

    iget-object v1, p0, Ls3/d;->j:Lj3/B;

    iget-object v2, p0, Ls3/d;->d:Ls3/c;

    invoke-virtual {v2, v0, v1}, Ls3/c;->i(Lj3/q;Lj3/B;)V

    iget-object v0, p0, Ls3/d;->f:Lj3/S;

    invoke-virtual {v0}, Lj3/S;->f()V

    iget-object v0, p0, Ls3/d;->h:Lj3/S;

    iput-object v0, p0, Ls3/d;->f:Lj3/S;

    iget-object v0, p0, Ls3/d;->g:Lj3/T;

    iput-object v0, p0, Ls3/d;->e:Lj3/T;

    iget-object v0, p0, Ls3/d;->c:Ls3/b;

    iput-object v0, p0, Ls3/d;->h:Lj3/S;

    const/4 v0, 0x0

    iput-object v0, p0, Ls3/d;->g:Lj3/T;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Ls3/d;->g()Lj3/S;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
