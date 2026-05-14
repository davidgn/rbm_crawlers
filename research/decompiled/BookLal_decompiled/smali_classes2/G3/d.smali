.class public abstract LG3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ld3/a;

.field public static final b:LG3/a;

.field public static final c:Ly3/c;

.field public static final d:Lz2/e;

.field public static final e:Ly3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld3/a;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ld3/a;-><init>(I)V

    sput-object v0, LG3/d;->a:Ld3/a;

    new-instance v0, LG3/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LG3/a;-><init>(I)V

    sput-object v0, LG3/d;->b:LG3/a;

    new-instance v0, Ly3/c;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ly3/c;-><init>(I)V

    sput-object v0, LG3/d;->c:Ly3/c;

    new-instance v0, Lz2/e;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lz2/e;-><init>(I)V

    sput-object v0, LG3/d;->d:Lz2/e;

    new-instance v0, Ly3/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ly3/c;-><init>(I)V

    sput-object v0, LG3/d;->e:Ly3/c;

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(ILjava/lang/String;)V
    .locals 2

    if-lez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " > 0 required but it was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
