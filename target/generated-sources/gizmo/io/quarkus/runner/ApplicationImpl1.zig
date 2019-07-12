// Class: io/quarkus/runner/ApplicationImpl1
//     Access =  public synthetic
//     Extends: io/quarkus/runtime/Application

// DO NOT MODIFY.  This is not actually a source file; it is a textual representation of generated code.
// Use only for debugging purposes.

// Auto-generated constructor
// Access: public
Method <init> : V
(
    // (no arguments)
) {
    ALOAD 0
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/runtime/Application#<init>
    RETURN
    
}

// Access: static
Field STARTUP_CONTEXT : Lio/quarkus/runtime/StartupContext;

// Access: protected final
Method doStart : V
(
    arg 1 = [Ljava/lang/String;
) {
    ** label1
    LDC (String) "java.util.logging.manager"
    LDC (String) "org.jboss.logmanager.LogManager"
    // Method descriptor: (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    INVOKESTATIC java/lang/System#setProperty
    POP
    LDC (String) "java.library.path"
    // Method descriptor: (Ljava/lang/String;)Ljava/lang/String;
    INVOKESTATIC java/lang/System#getProperty
    // Method descriptor: ()Z
    INVOKEVIRTUAL java/lang/String#isEmpty
    ISTORE 2
    // Method descriptor: ()Z
    INVOKESTATIC org/graalvm/nativeimage/ImageInfo#inImageRuntimeCode
    IFNE label2
    ** label3
    ** label4
    GOTO label5
    ** label2
    ILOAD 2
    IFNE label6
    ** label7
    ** label8
    GOTO label9
    ** label6
    LDC (String) "java.library.path"
    LDC (String) "/home/michael/API/GraalVM/jre/lib/amd64"
    // Method descriptor: (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    INVOKESTATIC java/lang/System#setProperty
    POP
    ** label9
    ** label5
    LDC (String) "javax.net.ssl.trustStore"
    // Method descriptor: (Ljava/lang/String;)Ljava/lang/String;
    INVOKESTATIC java/lang/System#getProperty
    ASTORE 3
    // Method descriptor: ()Z
    INVOKESTATIC org/graalvm/nativeimage/ImageInfo#inImageRuntimeCode
    IFNE label10
    ** label11
    ** label12
    GOTO label13
    ** label10
    ALOAD 3
    IFNULL label14
    ** label15
    ** label16
    GOTO label17
    ** label14
    LDC (String) "javax.net.ssl.trustStore"
    LDC (String) "/home/michael/API/GraalVM/jre/lib/security/cacerts"
    // Method descriptor: (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    INVOKESTATIC java/lang/System#setProperty
    POP
    ** label17
    ** label13
    // Method descriptor: ()V
    INVOKESTATIC io/quarkus/runtime/Timing#mainStarted
    // Field descriptor: Lio/quarkus/runtime/StartupContext;
    GETSTATIC io/quarkus/runner/ApplicationImpl1#STARTUP_CONTEXT
    ASTORE 4
    ** label18
    // Method descriptor: ()V
    INVOKESTATIC io/quarkus/runtime/generated/RunTimeConfig#getRunTimeConfiguration
    NEW io/quarkus/deployment/steps/AgroalProcessor$configureRuntimeProperties2
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/AgroalProcessor$configureRuntimeProperties2#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 4
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/LoggingResourceProcessor$setupLoggingRuntimeInit6
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/LoggingResourceProcessor$setupLoggingRuntimeInit6#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 4
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/ThreadPoolSetup$createExecutor3
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/ThreadPoolSetup$createExecutor3#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 4
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/NarayanaJtaProcessor$build4
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/NarayanaJtaProcessor$build4#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 4
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/ConfigBuildStep$validateConfigProperties15
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/ConfigBuildStep$validateConfigProperties15#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 4
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/UndertowBuildStep$boot17
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/UndertowBuildStep$boot17#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 4
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/LifecycleEventsBuildStep$startupEvent18
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/LifecycleEventsBuildStep$startupEvent18#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 4
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    LDC (String) "0.18.0"
    LDC (String) "agroal, cdi, jdbc-postgresql, narayana-jta, resteasy, resteasy-jsonb"
    // Method descriptor: (Ljava/lang/String;Ljava/lang/String;)V
    INVOKESTATIC io/quarkus/runtime/Timing#printStartupTime
    ** label19
    GOTO label20
    ** label21
    ASTORE 5
    ALOAD 5
    // Method descriptor: ()V
    INVOKEVIRTUAL java/lang/Throwable#printStackTrace
    ALOAD 4
    // Method descriptor: ()V
    INVOKEVIRTUAL io/quarkus/runtime/StartupContext#close
    NEW java/lang/RuntimeException
    DUP
    LDC (String) "Failed to start quarkus"
    ALOAD 5
    // Method descriptor: (Ljava/lang/String;Ljava/lang/Throwable;)V
    INVOKESPECIAL java/lang/RuntimeException#<init>
    CHECKCAST java/lang/Throwable
    ATHROW
    ** label22
    GOTO label20
    // Try from label18 to label19
    // Catch java/lang/Throwable by going to label21
    ** label20
    RETURN
    ** label23
    
}

// Access: protected final
Method doStop : V
(
    // (no arguments)
) {
    ** label1
    // Field descriptor: Lio/quarkus/runtime/StartupContext;
    GETSTATIC io/quarkus/runner/ApplicationImpl1#STARTUP_CONTEXT
    // Method descriptor: ()V
    INVOKEVIRTUAL io/quarkus/runtime/StartupContext#close
    RETURN
    ** label2
    
}

// Access: public static
Method <clinit> : V
(
    // (no arguments)
) {
    ** label1
    LDC (String) "java.util.logging.manager"
    LDC (String) "org.jboss.logmanager.LogManager"
    // Method descriptor: (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    INVOKESTATIC java/lang/System#setProperty
    POP
    // Method descriptor: ()V
    INVOKESTATIC io/quarkus/runtime/Timing#staticInitStarted
    NEW io/quarkus/runtime/StartupContext
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/runtime/StartupContext#<init>
    ASTORE 0
    ALOAD 0
    // Field descriptor: Lio/quarkus/runtime/StartupContext;
    PUTSTATIC io/quarkus/runner/ApplicationImpl1#STARTUP_CONTEXT
    ** label2
    NEW io/quarkus/deployment/steps/LoggingResourceProcessor$setupLoggingStaticInit1
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/LoggingResourceProcessor$setupLoggingStaticInit1#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/AgroalProcessor$build5
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/AgroalProcessor$build5#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/SubstrateConfigBuildStep$build9
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/SubstrateConfigBuildStep$build9#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/UndertowBuildStep$servletContextBean8
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/UndertowBuildStep$servletContextBean8#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/RuntimeBeanProcessor$build11
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/RuntimeBeanProcessor$build11#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/ArcAnnotationProcessor$build12
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/ArcAnnotationProcessor$build12#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/ResteasyServerCommonProcessor$setupInjection13
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/ResteasyServerCommonProcessor$setupInjection13#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/UndertowArcIntegrationBuildStep$integrateRequestContext14
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/UndertowArcIntegrationBuildStep$integrateRequestContext14#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/UndertowBuildStep$build16
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/UndertowBuildStep$build16#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    RETURN
    ** label3
    GOTO label4
    ** label5
    ASTORE 1
    ALOAD 0
    // Method descriptor: ()V
    INVOKEVIRTUAL io/quarkus/runtime/StartupContext#close
    NEW java/lang/RuntimeException
    DUP
    LDC (String) "Failed to start quarkus"
    ALOAD 1
    // Method descriptor: (Ljava/lang/String;Ljava/lang/Throwable;)V
    INVOKESPECIAL java/lang/RuntimeException#<init>
    CHECKCAST java/lang/Throwable
    ATHROW
    ** label6
    GOTO label4
    // Try from label2 to label3
    // Catch java/lang/Throwable by going to label5
    ** label4
    ** label7
    
}

