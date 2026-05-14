.class public final Lcom/google/android/gms/internal/ads/zzna;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzna;


# instance fields
.field public final zzb:Lcom/google/android/gms/internal/ads/zzgvw;

.field public final zzc:Ljava/lang/Double;

.field public final zzd:Ljava/lang/Double;

.field public final zze:Z

.field public final zzf:Z

.field public final zzg:Z

.field public final zzh:Z

.field public final zzi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzmz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzmz;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzna;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzna;-><init>(Lcom/google/android/gms/internal/ads/zzmz;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzna;->zza:Lcom/google/android/gms/internal/ads/zzna;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzmz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzmz;->zza()Lcom/google/android/gms/internal/ads/zzgvw;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzna;->zzb:Lcom/google/android/gms/internal/ads/zzgvw;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzna;->zzc:Ljava/lang/Double;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzna;->zzd:Ljava/lang/Double;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzna;->zze:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzna;->zzf:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzna;->zzi:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzna;->zzg:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzna;->zzh:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzna;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzna;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzna;->zzb:Lcom/google/android/gms/internal/ads/zzgvw;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzna;->zzb:Lcom/google/android/gms/internal/ads/zzgvw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgvw;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzna;->zzb:Lcom/google/android/gms/internal/ads/zzgvw;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v7

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
