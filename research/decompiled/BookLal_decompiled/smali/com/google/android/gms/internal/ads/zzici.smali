.class public abstract Lcom/google/android/gms/internal/ads/zzici;
.super Lcom/google/android/gms/internal/ads/zzibq;
.source "SourceFile"


# static fields
.field public static final synthetic zzb:I

.field private static final zzc:Z


# instance fields
.field zza:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zziga;->zza()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzici;->zzc:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibq;-><init>()V

    return-void
.end method

.method public static zzE(I)I
    .locals 1

    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static zzF(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x160

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static zzG(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x280

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static zzH(Lcom/google/android/gms/internal/ads/zzieo;)I
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzieo;->zzbr()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static synthetic zzJ()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzici;->zzc:Z

    return v0
.end method


# virtual methods
.method public final zzI()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzici;->zzy()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzici;->zzy()I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrote more data than expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract zzb(II)V
.end method

.method public abstract zzc(II)V
.end method

.method public abstract zzd(II)V
.end method

.method public abstract zze(II)V
.end method

.method public abstract zzf(IJ)V
.end method

.method public abstract zzg(IJ)V
.end method

.method public abstract zzh(IZ)V
.end method

.method public abstract zzi(ILjava/lang/String;)V
.end method

.method public abstract zzj(ILcom/google/android/gms/internal/ads/zzibz;)V
.end method

.method public abstract zzk(Lcom/google/android/gms/internal/ads/zzibz;)V
.end method

.method public abstract zzl([BII)V
.end method

.method public abstract zzm(ILcom/google/android/gms/internal/ads/zzieo;)V
.end method

.method public abstract zzn(ILcom/google/android/gms/internal/ads/zzibz;)V
.end method

.method public abstract zzo(Lcom/google/android/gms/internal/ads/zzieo;)V
.end method

.method public abstract zzp(B)V
.end method

.method public abstract zzq(I)V
.end method

.method public abstract zzr(I)V
.end method

.method public abstract zzs(I)V
.end method

.method public abstract zzt(J)V
.end method

.method public abstract zzu(J)V
.end method

.method public abstract zzw(Ljava/lang/String;)V
.end method

.method public abstract zzx()V
.end method

.method public abstract zzy()I
.end method
