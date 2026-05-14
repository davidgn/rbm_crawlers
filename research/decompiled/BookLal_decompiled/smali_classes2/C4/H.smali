.class public final LC4/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LC4/F;

.field public b:LC4/D;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:LC4/u;

.field public f:LC4/v;

.field public g:LC4/K;

.field public h:LC4/I;

.field public i:LC4/I;

.field public j:LC4/I;

.field public k:J

.field public l:J

.field public m:LC4/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LC4/H;->c:I

    new-instance v0, LC4/v;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LC4/v;-><init>(I)V

    iput-object v0, p0, LC4/H;->f:LC4/v;

    return-void
.end method

.method public static b(LC4/I;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_4

    iget-object v0, p0, LC4/I;->l:LC4/K;

    if-nez v0, :cond_3

    iget-object v0, p0, LC4/I;->m:LC4/I;

    if-nez v0, :cond_2

    iget-object v0, p0, LC4/I;->n:LC4/I;

    if-nez v0, :cond_1

    iget-object p0, p0, LC4/I;->o:LC4/I;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ".priorResponse != null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p0, ".cacheResponse != null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p0, ".networkResponse != null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p0, ".body != null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()LC4/I;
    .locals 18

    move-object/from16 v0, p0

    iget v5, v0, LC4/H;->c:I

    if-ltz v5, :cond_3

    iget-object v2, v0, LC4/H;->a:LC4/F;

    if-eqz v2, :cond_2

    iget-object v3, v0, LC4/H;->b:LC4/D;

    if-eqz v3, :cond_1

    iget-object v4, v0, LC4/H;->d:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v6, v0, LC4/H;->e:LC4/u;

    iget-object v1, v0, LC4/H;->f:LC4/v;

    invoke-virtual {v1}, LC4/v;->e()LC4/w;

    move-result-object v7

    iget-object v8, v0, LC4/H;->g:LC4/K;

    iget-object v9, v0, LC4/H;->h:LC4/I;

    iget-object v10, v0, LC4/H;->i:LC4/I;

    iget-object v11, v0, LC4/H;->j:LC4/I;

    iget-wide v12, v0, LC4/H;->k:J

    iget-wide v14, v0, LC4/H;->l:J

    iget-object v1, v0, LC4/H;->m:LC4/g;

    new-instance v17, LC4/I;

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, LC4/I;-><init>(LC4/F;LC4/D;Ljava/lang/String;ILC4/u;LC4/w;LC4/K;LC4/I;LC4/I;LC4/I;JJLC4/g;)V

    return-object v17

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "message == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "protocol == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "request == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, LC4/H;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final c(LC4/w;)V
    .locals 1

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LC4/w;->h()LC4/v;

    move-result-object p1

    iput-object p1, p0, LC4/H;->f:LC4/v;

    return-void
.end method
