.class public final Lcom/google/android/gms/internal/ads/zzftp;
.super Lcom/google/android/gms/internal/ads/zzftl;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzftn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfun;

.field private zzc:Lcom/google/android/gms/internal/ads/zzfwa;

.field private zzd:Lcom/google/android/gms/internal/ads/zzfuz;

.field private zze:Z

.field private zzf:Z

.field private final zzg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzftm;Lcom/google/android/gms/internal/ads/zzftn;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzftl;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfun;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfun;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzb:Lcom/google/android/gms/internal/ads/zzfun;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zze:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzf:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzftp;->zza:Lcom/google/android/gms/internal/ads/zzftn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzg:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzftp;->zzk(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzftn;->zzi()Lcom/google/android/gms/internal/ads/zzfto;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfto;->zza:Lcom/google/android/gms/internal/ads/zzfto;

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzftn;->zzi()Lcom/google/android/gms/internal/ads/zzfto;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfto;->zzc:Lcom/google/android/gms/internal/ads/zzfto;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfvd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzftn;->zze()Ljava/util/Map;

    move-result-object p2

    invoke-direct {v1, p3, p2, v0}, Lcom/google/android/gms/internal/ads/zzfvd;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzd:Lcom/google/android/gms/internal/ads/zzfuz;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfva;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzftn;->zzf()Landroid/webkit/WebView;

    move-result-object p2

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/ads/zzfva;-><init>(Ljava/lang/String;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzd:Lcom/google/android/gms/internal/ads/zzfuz;

    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzd:Lcom/google/android/gms/internal/ads/zzfuz;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfuz;->zza()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfuj;->zza()Lcom/google/android/gms/internal/ads/zzfuj;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzfuj;->zzb(Lcom/google/android/gms/internal/ads/zzftp;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzd:Lcom/google/android/gms/internal/ads/zzfuz;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfuz;->zzj(Lcom/google/android/gms/internal/ads/zzftm;)V

    return-void
.end method

.method private final zzk(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwa;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfwa;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzc:Lcom/google/android/gms/internal/ads/zzfwa;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zze:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzd:Lcom/google/android/gms/internal/ads/zzfuz;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zze:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfuj;->zza()Lcom/google/android/gms/internal/ads/zzfuj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfuj;->zzc(Lcom/google/android/gms/internal/ads/zzftp;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfur;->zza()Lcom/google/android/gms/internal/ads/zzfur;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfur;->zzg()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzd:Lcom/google/android/gms/internal/ads/zzfuz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfuz;->zzo(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzd:Lcom/google/android/gms/internal/ads/zzfuz;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfuh;->zza()Lcom/google/android/gms/internal/ads/zzfuh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfuh;->zzb()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuz;->zzn(Ljava/util/Date;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzd:Lcom/google/android/gms/internal/ads/zzfuz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzftp;->zza:Lcom/google/android/gms/internal/ads/zzftn;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfuz;->zzk(Lcom/google/android/gms/internal/ads/zzftp;Lcom/google/android/gms/internal/ads/zzftn;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzb(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzf:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzftp;->zzi()Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzftp;->zzk(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzd:Lcom/google/android/gms/internal/ads/zzfuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfuz;->zzp()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfuj;->zza()Lcom/google/android/gms/internal/ads/zzfuj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->zze()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzftp;

    if-eq v1, p0, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzftp;->zzi()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzftp;->zzc:Lcom/google/android/gms/internal/ads/zzfwa;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final zzc()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzf:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzc:Lcom/google/android/gms/internal/ads/zzfwa;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzf:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzb:Lcom/google/android/gms/internal/ads/zzfun;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfun;->zzc()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzf:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzd:Lcom/google/android/gms/internal/ads/zzfuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfuz;->zzm()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfuj;->zza()Lcom/google/android/gms/internal/ads/zzfuj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfuj;->zzd(Lcom/google/android/gms/internal/ads/zzftp;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzd:Lcom/google/android/gms/internal/ads/zzfuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfuz;->zzb()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzd:Lcom/google/android/gms/internal/ads/zzfuz;

    return-void
.end method

.method public final zzd(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfts;Ljava/lang/String;)V
    .locals 1

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzf:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzb:Lcom/google/android/gms/internal/ads/zzfun;

    const-string v0, "Ad overlay"

    invoke-virtual {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfun;->zzb(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfts;Ljava/lang/String;)V

    return-void
.end method

.method public final zzf()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzb:Lcom/google/android/gms/internal/ads/zzfun;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfun;->zza()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzfuz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzd:Lcom/google/android/gms/internal/ads/zzfuz;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzc:Lcom/google/android/gms/internal/ads/zzfwa;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final zzj()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zze:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzftp;->zzf:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
