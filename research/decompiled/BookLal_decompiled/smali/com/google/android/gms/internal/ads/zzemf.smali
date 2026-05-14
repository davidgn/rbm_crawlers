.class final Lcom/google/android/gms/internal/ads/zzemf;
.super Lcom/google/android/gms/internal/ads/zzbvt;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzemg;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzela;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzemg;Lcom/google/android/gms/internal/ads/zzela;[B)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemf;->zza:Lcom/google/android/gms/internal/ads/zzemg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbvt;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzela;

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemf;->zza:Lcom/google/android/gms/internal/ads/zzemg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzemg;->zzd(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzela;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzela;->zzc:Lcom/google/android/gms/internal/ads/zzddg;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzemm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzemm;->zzj()V

    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzela;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzela;->zzc:Lcom/google/android/gms/internal/ads/zzddg;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzemm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzemm;->zzw(ILjava/lang/String;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzela;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzela;->zzc:Lcom/google/android/gms/internal/ads/zzddg;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzemm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzemm;->zzx(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzbuq;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemf;->zza:Lcom/google/android/gms/internal/ads/zzemg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzemg;->zze(Lcom/google/android/gms/internal/ads/zzbuq;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzela;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzela;->zzc:Lcom/google/android/gms/internal/ads/zzddg;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzemm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzemm;->zzj()V

    return-void
.end method
