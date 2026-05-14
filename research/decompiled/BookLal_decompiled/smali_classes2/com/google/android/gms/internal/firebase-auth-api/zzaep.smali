.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/zzaep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzahp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaep<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaeo<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzahp;"
    }
.end annotation


# instance fields
.field protected zza:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaep;->zza:I

    return-void
.end method


# virtual methods
.method public zzn(Lcom/google/android/gms/internal/firebase-auth-api/zzaib;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzo()Lcom/google/android/gms/internal/firebase-auth-api/zzaff;
    .locals 5

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahp;->zzs()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaff;

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzC([BII)Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahp;->zzJ(Lcom/google/android/gms/internal/firebase-auth-api/zzafs;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzD()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Serializing "

    const-string v4, " to a ByteString threw an IOException (should never happen)."

    invoke-static {v3, v1, v4}, LC/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final zzp(Ljava/io/OutputStream;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahp;->zzs()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzf:I

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafq;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafq;-><init>(Ljava/io/OutputStream;I)V

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahp;->zzJ(Lcom/google/android/gms/internal/firebase-auth-api/zzafs;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafq;->zzI()V

    return-void
.end method

.method public final zzq()[B
    .locals 5

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahp;->zzs()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzC([BII)Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahp;->zzJ(Lcom/google/android/gms/internal/firebase-auth-api/zzafs;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzD()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Serializing "

    const-string v4, " to a byte array threw an IOException (should never happen)."

    invoke-static {v3, v1, v4}, LC/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
