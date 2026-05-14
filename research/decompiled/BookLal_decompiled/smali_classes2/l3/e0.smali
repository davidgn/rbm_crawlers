.class public abstract Ll3/e0;
.super Ll3/a;
.source "SourceFile"


# static fields
.field public static final u:Lj3/d0;


# instance fields
.field public q:Lj3/r0;

.field public r:Lj3/f0;

.field public s:Ljava/nio/charset/Charset;

.field public t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll3/P1;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ll3/P1;-><init>(I)V

    const-string v1, ":status"

    invoke-static {v1, v0}, Lj3/K;->a(Ljava/lang/String;Ll3/P1;)Lj3/d0;

    move-result-object v0

    sput-object v0, Ll3/e0;->u:Lj3/d0;

    return-void
.end method

.method public static h(Lj3/f0;)Ljava/nio/charset/Charset;
    .locals 2

    sget-object v0, Ll3/b0;->i:Lj3/a0;

    invoke-virtual {p0, v0}, Lj3/f0;->c(Lj3/c0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "charset="

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    :try_start_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    sget-object p0, LJ2/c;->b:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public static i(Lj3/f0;)Lj3/r0;
    .locals 4

    sget-object v0, Ll3/e0;->u:Lj3/d0;

    invoke-virtual {p0, v0}, Lj3/f0;->c(Lj3/c0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    sget-object p0, Lj3/r0;->l:Lj3/r0;

    const-string v0, "Missing HTTP status code"

    invoke-virtual {p0, v0}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v1, Ll3/b0;->i:Lj3/a0;

    invoke-virtual {p0, v1}, Lj3/f0;->c(Lj3/c0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-le v2, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "application/grpc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_6

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ll3/b0;->g(I)Lj3/r0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid content-type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lj3/r0;->b(Ljava/lang/String;)Lj3/r0;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
