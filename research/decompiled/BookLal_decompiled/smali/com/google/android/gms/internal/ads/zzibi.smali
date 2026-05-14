.class public abstract Lcom/google/android/gms/internal/ads/zzibi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzieo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzibi<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzibh<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzieo;"
    }
.end annotation


# instance fields
.field protected transient zzq:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzibi;->zzq:I

    return-void
.end method

.method public static zzaV(Lcom/google/android/gms/internal/ads/zzibz;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibz;->zzh()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Byte string is not UTF-8."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzaW(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/List<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzibh;->zzaT(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private zzdV(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v1, 0x12

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2c

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Serializing "

    const-string v3, " to a "

    invoke-static {v2, v1, v0, v3, p1}, Le1/i;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, " threw an IOException (should never happen)."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public zzaM()Lcom/google/android/gms/internal/ads/zzibz;
    .locals 4

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzieo;->zzbr()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzibz;->zza:Lcom/google/android/gms/internal/ads/zzibz;

    new-array v1, v0, [B

    sget v2, Lcom/google/android/gms/internal/ads/zzici;->zzb:I

    new-instance v2, Lcom/google/android/gms/internal/ads/zzicf;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzicf;-><init>([BII)V

    invoke-interface {p0, v2}, Lcom/google/android/gms/internal/ads/zzieo;->zzcX(Lcom/google/android/gms/internal/ads/zzici;)V

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzibv;->zza(Lcom/google/android/gms/internal/ads/zzici;[B)Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzibi;->zzdV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzaN()[B
    .locals 4

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzieo;->zzbr()I

    move-result v0

    new-array v1, v0, [B

    sget v2, Lcom/google/android/gms/internal/ads/zzici;->zzb:I

    new-instance v2, Lcom/google/android/gms/internal/ads/zzicf;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzicf;-><init>([BII)V

    invoke-interface {p0, v2}, Lcom/google/android/gms/internal/ads/zzieo;->zzcX(Lcom/google/android/gms/internal/ads/zzici;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzici;->zzI()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzibi;->zzdV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzaO(Ljava/io/OutputStream;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzieo;->zzbr()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzici;->zzE(I)I

    move-result v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzich;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzich;-><init>(Ljava/io/OutputStream;I)V

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/ads/zzieo;->zzcX(Lcom/google/android/gms/internal/ads/zzici;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzich;->zzx()V

    return-void
.end method

.method public zzaP(Ljava/io/OutputStream;)V
    .locals 3

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzieo;->zzbr()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v1

    add-int/2addr v1, v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzich;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzici;->zzE(I)I

    move-result v1

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzich;-><init>(Ljava/io/OutputStream;I)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzich;->zzr(I)V

    invoke-interface {p0, v2}, Lcom/google/android/gms/internal/ads/zzieo;->zzcX(Lcom/google/android/gms/internal/ads/zzici;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzich;->zzx()V

    return-void
.end method

.method public zzaQ()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public zzaR(I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public zzaS()Lcom/google/android/gms/internal/ads/zziet;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mutableCopy() is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zzaT(Lcom/google/android/gms/internal/ads/zzifg;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibi;->zzaQ()I

    move-result p1

    return p1
.end method

.method public zzaU()Lcom/google/android/gms/internal/ads/zzifs;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzifs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzifs;-><init>(Lcom/google/android/gms/internal/ads/zzieo;)V

    return-object v0
.end method
