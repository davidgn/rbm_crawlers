.class public final LC4/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:LC4/F;

.field public final b:LC4/D;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:LC4/u;

.field public final f:LC4/w;

.field public final l:LC4/K;

.field public final m:LC4/I;

.field public final n:LC4/I;

.field public final o:LC4/I;

.field public final p:J

.field public final q:J

.field public final r:LC4/g;

.field public s:LC4/i;


# direct methods
.method public constructor <init>(LC4/F;LC4/D;Ljava/lang/String;ILC4/u;LC4/w;LC4/K;LC4/I;LC4/I;LC4/I;JJLC4/g;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const-string v4, "request"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "protocol"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "message"

    invoke-static {p3, v4}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, LC4/I;->a:LC4/F;

    iput-object v2, v0, LC4/I;->b:LC4/D;

    iput-object v3, v0, LC4/I;->c:Ljava/lang/String;

    move v1, p4

    iput v1, v0, LC4/I;->d:I

    move-object v1, p5

    iput-object v1, v0, LC4/I;->e:LC4/u;

    move-object v1, p6

    iput-object v1, v0, LC4/I;->f:LC4/w;

    move-object v1, p7

    iput-object v1, v0, LC4/I;->l:LC4/K;

    move-object v1, p8

    iput-object v1, v0, LC4/I;->m:LC4/I;

    move-object v1, p9

    iput-object v1, v0, LC4/I;->n:LC4/I;

    move-object v1, p10

    iput-object v1, v0, LC4/I;->o:LC4/I;

    move-wide/from16 v1, p11

    iput-wide v1, v0, LC4/I;->p:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, LC4/I;->q:J

    move-object/from16 v1, p15

    iput-object v1, v0, LC4/I;->r:LC4/g;

    return-void
.end method

.method public static c(LC4/I;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LC4/I;->f:LC4/w;

    invoke-virtual {p0, p1}, LC4/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final b()LC4/i;
    .locals 1

    iget-object v0, p0, LC4/I;->s:LC4/i;

    if-nez v0, :cond_0

    sget-object v0, LC4/i;->n:LC4/i;

    iget-object v0, p0, LC4/I;->f:LC4/w;

    invoke-static {v0}, LZ2/l;->O(LC4/w;)LC4/i;

    move-result-object v0

    iput-object v0, p0, LC4/I;->s:LC4/i;

    :cond_0
    return-object v0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, LC4/I;->l:LC4/K;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LC4/K;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()LC4/H;
    .locals 3

    new-instance v0, LC4/H;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, LC4/I;->a:LC4/F;

    iput-object v1, v0, LC4/H;->a:LC4/F;

    iget-object v1, p0, LC4/I;->b:LC4/D;

    iput-object v1, v0, LC4/H;->b:LC4/D;

    iget v1, p0, LC4/I;->d:I

    iput v1, v0, LC4/H;->c:I

    iget-object v1, p0, LC4/I;->c:Ljava/lang/String;

    iput-object v1, v0, LC4/H;->d:Ljava/lang/String;

    iget-object v1, p0, LC4/I;->e:LC4/u;

    iput-object v1, v0, LC4/H;->e:LC4/u;

    iget-object v1, p0, LC4/I;->f:LC4/w;

    invoke-virtual {v1}, LC4/w;->h()LC4/v;

    move-result-object v1

    iput-object v1, v0, LC4/H;->f:LC4/v;

    iget-object v1, p0, LC4/I;->l:LC4/K;

    iput-object v1, v0, LC4/H;->g:LC4/K;

    iget-object v1, p0, LC4/I;->m:LC4/I;

    iput-object v1, v0, LC4/H;->h:LC4/I;

    iget-object v1, p0, LC4/I;->n:LC4/I;

    iput-object v1, v0, LC4/H;->i:LC4/I;

    iget-object v1, p0, LC4/I;->o:LC4/I;

    iput-object v1, v0, LC4/H;->j:LC4/I;

    iget-wide v1, p0, LC4/I;->p:J

    iput-wide v1, v0, LC4/H;->k:J

    iget-wide v1, p0, LC4/I;->q:J

    iput-wide v1, v0, LC4/H;->l:J

    iget-object v1, p0, LC4/I;->r:LC4/g;

    iput-object v1, v0, LC4/H;->m:LC4/g;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LC4/I;->b:LC4/D;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LC4/I;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LC4/I;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LC4/I;->a:LC4/F;

    iget-object v1, v1, LC4/F;->c:Ljava/lang/Object;

    check-cast v1, LC4/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
