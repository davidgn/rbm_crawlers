.class public final Lcom/google/android/gms/internal/ads/zzbha$zzx$zza;
.super Lcom/google/android/gms/internal/ads/zzicx;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbha$zzy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzicx<",
        "Lcom/google/android/gms/internal/ads/zzbha$zzx;",
        "Lcom/google/android/gms/internal/ads/zzbha$zzx$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbha$zzy;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbha$zzx;->zzB()Lcom/google/android/gms/internal/ads/zzbha$zzx;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzicx;-><init>(Lcom/google/android/gms/internal/ads/zzidd;)V

    return-void
.end method

.method public synthetic constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha$zzx$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicx;->zza:Lcom/google/android/gms/internal/ads/zzidd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbha$zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbha$zzx;->zza()Z

    move-result v0

    return v0
.end method

.method public zzb()Lcom/google/android/gms/internal/ads/zzbha$zzq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicx;->zza:Lcom/google/android/gms/internal/ads/zzidd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbha$zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbha$zzx;->zzb()Lcom/google/android/gms/internal/ads/zzbha$zzq;

    move-result-object v0

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/internal/ads/zzbha$zzq;)Lcom/google/android/gms/internal/ads/zzbha$zzx$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicx;->zza:Lcom/google/android/gms/internal/ads/zzidd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbha$zzx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbha$zzx;->zzv(Lcom/google/android/gms/internal/ads/zzbha$zzq;)V

    return-object p0
.end method

.method public zzd()Lcom/google/android/gms/internal/ads/zzbha$zzx$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicx;->zza:Lcom/google/android/gms/internal/ads/zzidd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbha$zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbha$zzx;->zzw()V

    return-object p0
.end method

.method public zze()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicx;->zza:Lcom/google/android/gms/internal/ads/zzidd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbha$zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbha$zzx;->zze()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzf()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicx;->zza:Lcom/google/android/gms/internal/ads/zzidd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbha$zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbha$zzx;->zzf()I

    move-result v0

    return v0
.end method

.method public zzg(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicx;->zza:Lcom/google/android/gms/internal/ads/zzidd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbha$zzx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbha$zzx;->zzg(I)I

    move-result p1

    return p1
.end method

.method public zzh(II)Lcom/google/android/gms/internal/ads/zzbha$zzx$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicx;->zza:Lcom/google/android/gms/internal/ads/zzidd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbha$zzx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbha$zzx;->zzx(II)V

    return-object p0
.end method

.method public zzi(I)Lcom/google/android/gms/internal/ads/zzbha$zzx$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicx;->zza:Lcom/google/android/gms/internal/ads/zzidd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbha$zzx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbha$zzx;->zzy(I)V

    return-object p0
.end method

.method public zzj(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzbha$zzx$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbha$zzx$zza;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicx;->zza:Lcom/google/android/gms/internal/ads/zzidd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbha$zzx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbha$zzx;->zzz(Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public zzk()Lcom/google/android/gms/internal/ads/zzbha$zzx$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicx;->zza:Lcom/google/android/gms/internal/ads/zzidd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbha$zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbha$zzx;->zzA()V

    return-object p0
.end method
