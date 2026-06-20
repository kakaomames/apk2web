.class public interface abstract Lcom/microsoft/applications/events/ILogManager;
.super Ljava/lang/Object;
.source "ILogManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract addEventListener(Lcom/microsoft/applications/events/DebugEventType;Lcom/microsoft/applications/events/DebugEventListener;)V
.end method

.method public abstract disableViewer()V
.end method

.method public abstract flush()Lcom/microsoft/applications/events/Status;
.end method

.method public abstract flushAndTeardown()V
.end method

.method public abstract getCurrentEndpoint()Ljava/lang/String;
.end method

.method public abstract getLogConfigurationCopy()Lcom/microsoft/applications/events/ILogConfiguration;
.end method

.method public abstract getLogSessionData()Lcom/microsoft/applications/events/LogSessionData;
.end method

.method public abstract getLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/applications/events/ILogger;
.end method

.method public abstract getSemanticContext()Lcom/microsoft/applications/events/ISemanticContext;
.end method

.method public abstract getTransmitProfileName()Ljava/lang/String;
.end method

.method public abstract initializeDiagnosticDataViewer(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isViewerEnabled()Z
.end method

.method public abstract loadTransmitProfiles(Ljava/lang/String;)Lcom/microsoft/applications/events/Status;
.end method

.method public abstract pauseTransmission()Lcom/microsoft/applications/events/Status;
.end method

.method public abstract registerPrivacyGuard()Z
.end method

.method public abstract removeEventListener(Lcom/microsoft/applications/events/DebugEventType;Lcom/microsoft/applications/events/DebugEventListener;)V
.end method

.method public abstract resetTransmitProfiles()Lcom/microsoft/applications/events/Status;
.end method

.method public abstract resumeTransmission()Lcom/microsoft/applications/events/Status;
.end method

.method public abstract setContext(Ljava/lang/String;DLcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;
.end method

.method public abstract setContext(Ljava/lang/String;ILcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;
.end method

.method public abstract setContext(Ljava/lang/String;JLcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;
.end method

.method public abstract setContext(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;
.end method

.method public abstract setContext(Ljava/lang/String;Ljava/util/Date;Lcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;
.end method

.method public abstract setContext(Ljava/lang/String;Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;
.end method

.method public abstract setContext(Ljava/lang/String;ZLcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;
.end method

.method public abstract setLevelFilter(I[I)V
.end method

.method public abstract setTransmitProfile(Lcom/microsoft/applications/events/TransmitProfile;)Lcom/microsoft/applications/events/Status;
.end method

.method public abstract setTransmitProfile(Ljava/lang/String;)Lcom/microsoft/applications/events/Status;
.end method

.method public abstract unregisterPrivacyGuard()Z
.end method

.method public abstract uploadNow()Lcom/microsoft/applications/events/Status;
.end method
