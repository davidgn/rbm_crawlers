.class final Lcom/google/android/recaptcha/internal/zzet;
.super Lcom/google/android/recaptcha/internal/zzew;
.source "SourceFile"


# instance fields
.field private final zzc:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/recaptcha/internal/zzew;-><init>([B)V

    const/4 p2, 0x0

    array-length p1, p1

    invoke-static {p2, p3, p1}, Lcom/google/android/recaptcha/internal/zzez;->zzk(III)I

    iput p3, p0, Lcom/google/android/recaptcha/internal/zzet;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza(I)B
    .locals 4

    iget v0, p0, Lcom/google/android/recaptcha/internal/zzet;->zzc:I

    add-int/lit8 v1, p1, 0x1

    sub-int v1, v0, v1

    or-int/2addr v1, p1

    if-gez v1, :cond_1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Index < 0: "

    invoke-static {p1, v1}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "Index > length: "

    const-string v3, ", "

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/ads/internal/util/client/a;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzew;->zza:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final zzb(I)B
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzew;->zza:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final zzc()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/recaptcha/internal/zzet;->zzc:I

    return v0
.end method

.method public final zze([BIII)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/recaptcha/internal/zzew;->zza:[B

    const/4 p3, 0x0

    invoke-static {p2, p3, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
