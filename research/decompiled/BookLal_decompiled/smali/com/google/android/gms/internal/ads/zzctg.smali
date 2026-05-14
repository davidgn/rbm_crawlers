.class public final Lcom/google/android/gms/internal/ads/zzctg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbtw;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private zzd:Lcom/google/android/gms/internal/ads/zzctl;

.field private final zze:Lcom/google/android/gms/internal/ads/zzbov;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbov;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtw;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzctd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzctd;-><init>(Lcom/google/android/gms/internal/ads/zzctg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzctg;->zze:Lcom/google/android/gms/internal/ads/zzbov;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzctf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzctf;-><init>(Lcom/google/android/gms/internal/ads/zzctg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzf:Lcom/google/android/gms/internal/ads/zzbov;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctg;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzb:Lcom/google/android/gms/internal/ads/zzbtw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzctl;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzb:Lcom/google/android/gms/internal/ads/zzbtw;

    const-string v1, "/updateActiveView"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzctg;->zze:Lcom/google/android/gms/internal/ads/zzbov;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbtw;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    const-string v1, "/untrackActiveViewUnit"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzf:Lcom/google/android/gms/internal/ads/zzbov;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbtw;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzd:Lcom/google/android/gms/internal/ads/zzctl;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcjz;)V
    .locals 2

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctg;->zze:Lcom/google/android/gms/internal/ads/zzbov;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzf:Lcom/google/android/gms/internal/ads/zzbov;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzcjz;)V
    .locals 2

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctg;->zze:Lcom/google/android/gms/internal/ads/zzbov;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzac(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzf:Lcom/google/android/gms/internal/ads/zzbov;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzac(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    return-void
.end method

.method public final zzd()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzb:Lcom/google/android/gms/internal/ads/zzbtw;

    const-string v1, "/updateActiveView"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzctg;->zze:Lcom/google/android/gms/internal/ads/zzbov;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbtw;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    const-string v1, "/untrackActiveViewUnit"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzf:Lcom/google/android/gms/internal/ads/zzbov;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbtw;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    return-void
.end method

.method public final synthetic zze(Ljava/util/Map;)Z
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "hashCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctg;->zza:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic zzf()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzc:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final synthetic zzg()Lcom/google/android/gms/internal/ads/zzctl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzd:Lcom/google/android/gms/internal/ads/zzctl;

    return-object v0
.end method
