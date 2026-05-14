.class final Lcom/google/android/gms/internal/ads/zzcnz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdng;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcoc;

.field private zzb:Lcom/google/android/gms/internal/ads/zzfhf;

.field private zzc:Lcom/google/android/gms/internal/ads/zzfgj;

.field private zzd:Lcom/google/android/gms/internal/ads/zzdhw;

.field private zze:Lcom/google/android/gms/internal/ads/zzdbg;

.field private zzf:Lcom/google/android/gms/internal/ads/zzdnc;

.field private zzg:Lcom/google/android/gms/internal/ads/zzcun;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcoc;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnz;->zza:Lcom/google/android/gms/internal/ads/zzcoc;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdnh;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcnz;->zzd:Lcom/google/android/gms/internal/ads/zzdhw;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdhw;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzimc;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcnz;->zze:Lcom/google/android/gms/internal/ads/zzdbg;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdbg;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzimc;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcnz;->zzf:Lcom/google/android/gms/internal/ads/zzdnc;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdnc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzimc;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcnz;->zzg:Lcom/google/android/gms/internal/ads/zzcun;

    const-class v2, Lcom/google/android/gms/internal/ads/zzcun;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzimc;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcoa;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzcnz;->zzg:Lcom/google/android/gms/internal/ads/zzcun;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzcnz;->zzf:Lcom/google/android/gms/internal/ads/zzdnc;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcye;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzcye;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzflj;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzflj;-><init>()V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzdaf;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzdaf;-><init>()V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzdzf;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzdzf;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzcnz;->zzd:Lcom/google/android/gms/internal/ads/zzdhw;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzcnz;->zze:Lcom/google/android/gms/internal/ads/zzdbg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeot;->zza()Lcom/google/android/gms/internal/ads/zzeor;

    move-result-object v13

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzcnz;->zzb:Lcom/google/android/gms/internal/ads/zzfhf;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcnz;->zzc:Lcom/google/android/gms/internal/ads/zzfgj;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcnz;->zza:Lcom/google/android/gms/internal/ads/zzcoc;

    const/4 v14, 0x0

    move-object v3, v1

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/internal/ads/zzcoa;-><init>(Lcom/google/android/gms/internal/ads/zzcoc;Lcom/google/android/gms/internal/ads/zzcun;Lcom/google/android/gms/internal/ads/zzdnc;Lcom/google/android/gms/internal/ads/zzcye;Lcom/google/android/gms/internal/ads/zzflj;Lcom/google/android/gms/internal/ads/zzdaf;Lcom/google/android/gms/internal/ads/zzdzf;Lcom/google/android/gms/internal/ads/zzdhw;Lcom/google/android/gms/internal/ads/zzdbg;Lcom/google/android/gms/internal/ads/zzeor;Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfhf;Lcom/google/android/gms/internal/ads/zzfgj;)V

    return-object v1
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzfgj;)Lcom/google/android/gms/internal/ads/zzdng;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnz;->zzc:Lcom/google/android/gms/internal/ads/zzfgj;

    return-object p0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfhf;)Lcom/google/android/gms/internal/ads/zzdng;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnz;->zzb:Lcom/google/android/gms/internal/ads/zzfhf;

    return-object p0
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzcun;)Lcom/google/android/gms/internal/ads/zzdng;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnz;->zzg:Lcom/google/android/gms/internal/ads/zzcun;

    return-object p0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzdnc;)Lcom/google/android/gms/internal/ads/zzdng;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnz;->zzf:Lcom/google/android/gms/internal/ads/zzdnc;

    return-object p0
.end method

.method public final bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzdbg;)Lcom/google/android/gms/internal/ads/zzdng;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnz;->zze:Lcom/google/android/gms/internal/ads/zzdbg;

    return-object p0
.end method

.method public final bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzdhw;)Lcom/google/android/gms/internal/ads/zzdng;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnz;->zzd:Lcom/google/android/gms/internal/ads/zzdhw;

    return-object p0
.end method

.method public final bridge synthetic zzh()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcnz;->zza()Lcom/google/android/gms/internal/ads/zzdnh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzi(Lcom/google/android/gms/internal/ads/zzfgj;)Lcom/google/android/gms/internal/ads/zzdbd;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnz;->zzc:Lcom/google/android/gms/internal/ads/zzfgj;

    return-object p0
.end method

.method public final synthetic zzj(Lcom/google/android/gms/internal/ads/zzfhf;)Lcom/google/android/gms/internal/ads/zzdbd;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnz;->zzb:Lcom/google/android/gms/internal/ads/zzfhf;

    return-object p0
.end method
