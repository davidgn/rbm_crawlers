.class public final LC4/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final F:Ljava/util/List;

.field public static final G:Ljava/util/List;


# instance fields
.field public final A:LZ2/l;

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:LC4/o;

.field public final a:LR0/i;

.field public final b:LC4/o;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:LD4/a;

.field public final f:Z

.field public final l:LC4/b;

.field public final m:Z

.field public final n:Z

.field public final o:LC4/b;

.field public final p:LC4/h;

.field public final q:LC4/b;

.field public final r:Ljava/net/ProxySelector;

.field public final s:LC4/b;

.field public final t:Ljavax/net/SocketFactory;

.field public final u:Ljavax/net/ssl/SSLSocketFactory;

.field public final v:Ljavax/net/ssl/X509TrustManager;

.field public final w:Ljava/util/List;

.field public final x:Ljava/util/List;

.field public final y:LP4/c;

.field public final z:LC4/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LC4/D;->e:LC4/D;

    sget-object v1, LC4/D;->c:LC4/D;

    filled-new-array {v0, v1}, [LC4/D;

    move-result-object v0

    invoke-static {v0}, LD4/c;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LC4/C;->F:Ljava/util/List;

    sget-object v0, LC4/q;->e:LC4/q;

    sget-object v1, LC4/q;->f:LC4/q;

    filled-new-array {v0, v1}, [LC4/q;

    move-result-object v0

    invoke-static {v0}, LD4/c;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LC4/C;->G:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    new-instance v0, LC4/B;

    invoke-direct {v0}, LC4/B;-><init>()V

    invoke-direct {p0, v0}, LC4/C;-><init>(LC4/B;)V

    return-void
.end method

.method public constructor <init>(LC4/B;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, LC4/B;->a:LR0/i;

    .line 3
    iput-object v0, p0, LC4/C;->a:LR0/i;

    .line 4
    iget-object v0, p1, LC4/B;->b:LC4/o;

    .line 5
    iput-object v0, p0, LC4/C;->b:LC4/o;

    .line 6
    iget-object v0, p1, LC4/B;->c:Ljava/util/ArrayList;

    .line 7
    invoke-static {v0}, LD4/c;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LC4/C;->c:Ljava/util/List;

    .line 8
    iget-object v0, p1, LC4/B;->d:Ljava/util/ArrayList;

    .line 9
    invoke-static {v0}, LD4/c;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LC4/C;->d:Ljava/util/List;

    .line 10
    iget-object v0, p1, LC4/B;->e:LD4/a;

    .line 11
    iput-object v0, p0, LC4/C;->e:LD4/a;

    .line 12
    iget-boolean v0, p1, LC4/B;->f:Z

    .line 13
    iput-boolean v0, p0, LC4/C;->f:Z

    .line 14
    iget-object v0, p1, LC4/B;->g:LC4/b;

    .line 15
    iput-object v0, p0, LC4/C;->l:LC4/b;

    .line 16
    iget-boolean v0, p1, LC4/B;->h:Z

    .line 17
    iput-boolean v0, p0, LC4/C;->m:Z

    .line 18
    iget-boolean v0, p1, LC4/B;->i:Z

    .line 19
    iput-boolean v0, p0, LC4/C;->n:Z

    .line 20
    iget-object v0, p1, LC4/B;->j:LC4/b;

    .line 21
    iput-object v0, p0, LC4/C;->o:LC4/b;

    .line 22
    iget-object v0, p1, LC4/B;->k:LC4/h;

    .line 23
    iput-object v0, p0, LC4/C;->p:LC4/h;

    .line 24
    iget-object v0, p1, LC4/B;->l:LC4/b;

    .line 25
    iput-object v0, p0, LC4/C;->q:LC4/b;

    .line 26
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, LN4/a;->a:LN4/a;

    .line 27
    :cond_0
    iput-object v0, p0, LC4/C;->r:Ljava/net/ProxySelector;

    .line 28
    iget-object v0, p1, LC4/B;->m:LC4/b;

    .line 29
    iput-object v0, p0, LC4/C;->s:LC4/b;

    .line 30
    iget-object v0, p1, LC4/B;->n:Ljavax/net/SocketFactory;

    .line 31
    iput-object v0, p0, LC4/C;->t:Ljavax/net/SocketFactory;

    .line 32
    iget-object v0, p1, LC4/B;->o:Ljava/util/List;

    .line 33
    iput-object v0, p0, LC4/C;->w:Ljava/util/List;

    .line 34
    iget-object v1, p1, LC4/B;->p:Ljava/util/List;

    .line 35
    iput-object v1, p0, LC4/C;->x:Ljava/util/List;

    .line 36
    iget-object v1, p1, LC4/B;->q:LP4/c;

    .line 37
    iput-object v1, p0, LC4/C;->y:LP4/c;

    .line 38
    iget v1, p1, LC4/B;->s:I

    .line 39
    iput v1, p0, LC4/C;->B:I

    .line 40
    iget v1, p1, LC4/B;->t:I

    .line 41
    iput v1, p0, LC4/C;->C:I

    .line 42
    iget v1, p1, LC4/B;->u:I

    .line 43
    iput v1, p0, LC4/C;->D:I

    .line 44
    new-instance v1, LC4/o;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LC4/o;-><init>(I)V

    iput-object v1, p0, LC4/C;->E:LC4/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 45
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 46
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LC4/q;

    .line 47
    iget-boolean v2, v2, LC4/q;->a:Z

    if-eqz v2, :cond_2

    .line 48
    sget-object v0, LL4/n;->a:LL4/n;

    .line 49
    sget-object v0, LL4/n;->a:LL4/n;

    .line 50
    invoke-virtual {v0}, LL4/n;->m()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, LC4/C;->v:Ljavax/net/ssl/X509TrustManager;

    .line 51
    sget-object v2, LL4/n;->a:LL4/n;

    .line 52
    invoke-virtual {v2, v0}, LL4/n;->l(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, p0, LC4/C;->u:Ljavax/net/ssl/SSLSocketFactory;

    .line 53
    sget-object v2, LL4/n;->a:LL4/n;

    .line 54
    invoke-virtual {v2, v0}, LL4/n;->b(Ljavax/net/ssl/X509TrustManager;)LZ2/l;

    move-result-object v0

    .line 55
    iput-object v0, p0, LC4/C;->A:LZ2/l;

    .line 56
    iget-object p1, p1, LC4/B;->r:LC4/l;

    .line 57
    iget-object v2, p1, LC4/l;->b:LZ2/l;

    .line 58
    invoke-static {v2, v0}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 59
    :cond_3
    new-instance v2, LC4/l;

    iget-object p1, p1, LC4/l;->a:Ljava/util/Set;

    invoke-direct {v2, p1, v0}, LC4/l;-><init>(Ljava/util/Set;LZ2/l;)V

    move-object p1, v2

    .line 60
    :goto_0
    iput-object p1, p0, LC4/C;->z:LC4/l;

    goto :goto_2

    .line 61
    :cond_4
    :goto_1
    iput-object v1, p0, LC4/C;->u:Ljavax/net/ssl/SSLSocketFactory;

    .line 62
    iput-object v1, p0, LC4/C;->A:LZ2/l;

    .line 63
    iput-object v1, p0, LC4/C;->v:Ljavax/net/ssl/X509TrustManager;

    .line 64
    sget-object p1, LC4/l;->c:LC4/l;

    iput-object p1, p0, LC4/C;->z:LC4/l;

    .line 65
    :goto_2
    iget-object p1, p0, LC4/C;->c:Ljava/util/List;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 66
    iget-object p1, p0, LC4/C;->d:Ljava/util/List;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 67
    iget-object p1, p0, LC4/C;->v:Ljavax/net/ssl/X509TrustManager;

    iget-object v0, p0, LC4/C;->A:LZ2/l;

    iget-object v1, p0, LC4/C;->u:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p0, LC4/C;->w:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    .line 68
    :cond_5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LC4/q;

    .line 69
    iget-boolean v3, v3, LC4/q;->a:Z

    if-eqz v3, :cond_6

    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    if-eqz p1, :cond_7

    goto :goto_4

    .line 70
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "x509TrustManager == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "certificateChainCleaner == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "sslSocketFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_a
    :goto_3
    const-string v2, "Check failed."

    if-nez v1, :cond_e

    if-nez v0, :cond_d

    if-nez p1, :cond_c

    .line 74
    iget-object p1, p0, LC4/C;->z:LC4/l;

    sget-object v0, LC4/l;->c:LC4/l;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    :goto_4
    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Null network interceptor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Null interceptor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
